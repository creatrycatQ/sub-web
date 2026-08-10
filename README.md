# ✈️ 机场订阅转换系统 (sub-web-modify + subconverter)

基于 GitHub 热门开源项目搭建的全功能机场订阅转换平台，支持多种协议转换、分流规则配置、暗黑模式及本地/云端部署。

---

## 🌟 功能亮点

- 🚀 **全面客户端支持**：支持 Clash、Sing-Box、Surge、Shadowrocket、Quantumult X、V2Ray、Trojan、Loon 等数十种客户端格式转换。
- ⚙️ **丰富的远程规则**：内置 ACL4SSR（精简/全分组/去广告/多国家等）、Dream 修改版、流媒体规则等上百条常用规则库。
- 🔒 **多后端支持**：可自由切换肥羊增强型后端、肥羊备用后端或本地/自建后端（127.0.0.1:25500），保障订阅隐私安全。
- 🛠️ **高级筛选过滤**：支持节点正则筛选（保留/排除）、自定义 UA、重命名、UDP/TFO 开启、Emoji 节点标记等。
- 🌙 **暗黑/亮色切换**：自动适配系统主题，并支持一键手动切换。

---

## 🚀 快速启动指南

### 方式一：Windows 本地双击启动 (推荐本地使用)

1. 在项目根目录下，双击运行 **`start.bat`** 批处理文件。
2. 浏览器会自动打开 [http://localhost:8080](http://localhost:8080)。
3. 在网页中粘贴您的机场订阅链接，选择目标客户端（如 Clash / Sing-Box）与分流规则，点击**“生成订阅链接”**即可使用！

### 方式二：命令行手动启动 (Node.js)

```bash
# 启动本地 Web 托管服务
node server.js
```
访问地址：`http://localhost:8080`

### 方式三：VPS 远程服务器 Docker 一键部署

如果您有自己的 Linux  VPS 服务器或 NAS 环境，可以直接使用项目中配置好的 `docker-compose.yml`：

```bash
# 启动 subconverter 后端 + sub-web 前端容器
docker-compose up -d
```
启动后：
- 前端界面：`http://your-server-ip:8080`
- 后端转换接口：`http://your-server-ip:25500`

---

## 🛡️ 安全与隐私建议

1. **选择可信后端**：在转换敏感的机场订阅时，建议在“后端地址”下拉菜单中选择自建后端或默认受信任的接口，避免将订阅泄露给不透明的第三方转换站点。
2. **API 保护**：如在 VPS 公网部署后端，建议在 `subconverter` 的配置中添加 `API Token` 保护以防止接口滥用。
