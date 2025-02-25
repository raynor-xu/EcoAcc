import torch
import torch.nn as nn
import torch.optim as optim
import torchvision
import torchvision.transforms as transforms
from torch.quantization import fuse_modules, get_default_qconfig, prepare, convert


# 定义原始 FP32 模型（包含 QuantStub/DeQuantStub 用于量化和反量化）
class FusedCNN(nn.Module):
    def __init__(self):
        super(FusedCNN, self).__init__()
        # 输入量化与输出反量化模块
        self.quant = torch.quantization.QuantStub()
        self.dequant = torch.quantization.DeQuantStub()

        # 第一卷积块：conv -> BN -> ReLU -> 池化
        self.conv1 = nn.Conv2d(1, 32, kernel_size=3, stride=1, padding=1)
        self.bn1 = nn.BatchNorm2d(32)
        self.relu1 = nn.ReLU()
        self.pool1 = nn.MaxPool2d(kernel_size=2, stride=2)

        # 第二卷积块：conv -> BN -> ReLU -> 池化
        self.conv2 = nn.Conv2d(32, 64, kernel_size=3, stride=1, padding=1)
        self.bn2 = nn.BatchNorm2d(64)
        self.relu2 = nn.ReLU()
        self.pool2 = nn.MaxPool2d(kernel_size=2, stride=2)

        # 全连接层
        self.fc = nn.Linear(64 * 7 * 7, 10)

    def fuse_model(self):
        # 融合 conv, bn 和 relu 模块（注意模块名称必须与 __init__ 中的保持一致）
        fuse_modules(self, [['conv1', 'bn1', 'relu1'],
                            ['conv2', 'bn2', 'relu2']], inplace=True)

    def forward(self, x):
        # 输入先量化
        x = self.quant(x)
        x = self.conv1(x)
        x = self.pool1(x)
        x = self.conv2(x)
        x = self.pool2(x)
        # 使用 reshape 替换 view，以适应不连续内存情况
        x = x.reshape(x.size(0), -1)
        x = self.fc(x)
        # 最后反量化回 FP32，方便计算 loss 或后续处理
        x = self.dequant(x)
        return x


# 数据加载函数
def get_data_loaders(batch_size=64):
    transform = transforms.Compose([
        transforms.ToTensor(),
        transforms.Normalize((0.1307,), (0.3081,))
    ])
    train_set = torchvision.datasets.MNIST(root='./data', train=True, download=True, transform=transform)
    test_set = torchvision.datasets.MNIST(root='./data', train=False, download=True, transform=transform)
    train_loader = torch.utils.data.DataLoader(train_set, batch_size=batch_size, shuffle=True, num_workers=2)
    test_loader = torch.utils.data.DataLoader(test_set, batch_size=batch_size, shuffle=False, num_workers=2)
    return train_loader, test_loader


# 训练函数
def train(model, device, train_loader, optimizer, criterion, epoch):
    model.train()
    for batch_idx, (data, target) in enumerate(train_loader):
        data, target = data.to(device), target.to(device)
        optimizer.zero_grad()
        output = model(data)
        loss = criterion(output, target)
        loss.backward()
        optimizer.step()
        if batch_idx % 100 == 0:
            print(f"Epoch {epoch} [{batch_idx * len(data)}/{len(train_loader.dataset)}] Loss: {loss.item():.6f}")


# 测试函数
def test(model, device, test_loader, criterion):
    model.eval()
    test_loss = 0.0
    correct = 0
    with torch.no_grad():
        for data, target in test_loader:
            data, target = data.to(device), target.to(device)
            output = model(data)
            test_loss += criterion(output, target).item()
            pred = output.argmax(dim=1, keepdim=True)
            correct += pred.eq(target.view_as(pred)).sum().item()
    test_loss /= len(test_loader.dataset)
    accuracy = 100. * correct / len(test_loader.dataset)
    print(
        f"\nTest set: Average loss: {test_loss:.4f}, Accuracy: {correct}/{len(test_loader.dataset)} ({accuracy:.2f}%)\n")


def main():
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    train_loader, test_loader = get_data_loaders(batch_size=64)
    model = FusedCNN().to(device)
    criterion = nn.CrossEntropyLoss()
    optimizer = optim.Adam(model.parameters(), lr=0.001)

    # 先以 FP32 模型训练
    num_epochs = 5
    for epoch in range(1, num_epochs + 1):
        train(model, device, train_loader, optimizer, criterion, epoch)
        test(model, device, test_loader, criterion)

    # 融合 conv, bn, relu 模块
    model.fuse_model()
    # 设置量化配置
    model.qconfig = get_default_qconfig('fbgemm')
    print("QConfig:", model.qconfig)

    # 准备量化：插入量化和反量化模块
    torch.quantization.prepare(model, inplace=True)

    # 校准阶段：用部分数据运行模型以收集激活分布信息
    model.eval()
    with torch.no_grad():
        for data, _ in test_loader:
            data = data.to(device)
            model(data)

    # 转换为量化模型
    torch.quantization.convert(model, inplace=True)

    # 量化后测试模型性能
    test(model, device, test_loader, criterion)

    # 保存量化模型（包含网络结构和权重）
    torch.save(model, "fused_quantized_cnn.pth")
    print("融合量化后的模型已保存。")


if __name__ == "__main__":
    main()
