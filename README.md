# 伏魔记

步步高电子词典经典游戏 - 伏魔记的H5移植版本进行了docker移植

原项目地址：https://gitee.com/bgwp/fm

## 项目介绍

此仓库为伏魔记游戏的Web前端及部署文件

## 快速开始

### 使用Docker运行

```bash
docker run -d -p 8080:80 ghcr.io/hmcxnn/fm-master:latest
```

然后在浏览器中访问：`http://localhost:8080`

### 使用Docker Compose

创建 `docker-compose.yml` 文件：

```yaml
version: '3'
services:
  fmj:
    image: ghcr.io/hmcxnn/fm-master:latest
    ports:
      - "8080:80"
    restart: unless-stopped
```

然后运行：

```bash
docker-compose up -d
```
## 相关项目

- 引擎源码地址：[http://gitee.com/bgwp/fmj.kt](http://gitee.com/bgwp/fmj.kt)
- 三国霸业地址：[http://gitee.com/bgwp/iBaye](http://gitee.com/bgwp/iBaye)

## 许可证

MIT
