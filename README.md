# SampleApp（示例）

这是一个最小的 .NET 10 Web 应用示例，包含 Azure Bicep 基础设施模板与部署说明。

快速开始（Windows PowerShell）：

```powershell
mkdir c:\workspace
cd c:\workspace
# 构建并运行应用
dotnet build src\SampleApp\SampleApp.csproj
dotnet run --project src\SampleApp\SampleApp.csproj
```

发布并部署（示例）：

```powershell
# 发布
dotnet publish src\SampleApp\SampleApp.csproj -c Release -o publish
# 使用 Azure CLI 部署 Bicep（需登录 az login）
az deployment group create --resource-group <RG_NAME> --template-file infra\main.bicep --parameters location=eastus
```

注意：请先在 VS Code 中打开 `c:\workspace` 以便进行后续开发。若需要，我可以帮你初始化 Git 并提交初始提交。
