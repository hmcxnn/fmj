# 伏魔记

步步高电子词典经典游戏 - 伏魔记的H5移植版本

[![Docker Image CI](https://github.com/你的GitHub用户名/fm-master/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/你的GitHub用户名/fm-master/actions/workflows/docker-publish.yml)

## 项目介绍

此仓库为伏魔记游戏的Web前端及部署文件

## 快速开始

### 使用Docker运行

```bash
docker run -d -p 8080:80 ghcr.io/你的GitHub用户名/fm-master:latest
```

然后在浏览器中访问：`http://localhost:8080`

### 使用Docker Compose

创建 `docker-compose.yml` 文件：

```yaml
version: '3'
services:
  fmj:
    image: ghcr.io/你的GitHub用户名/fm-master:latest
    ports:
      - "8080:80"
    restart: unless-stopped
```

然后运行：

```bash
docker-compose up -d
```

## 开发

### 本地开发

1. 克隆仓库
2. 使用任意静态文件服务器（如 `python -m http.server`）在项目根目录启动服务
3. 访问 `http://localhost:8000`

### 构建Docker镜像

```bash
docker build -t fmj .
docker run -d -p 8080:80 fmj
```

## 部署

推送到 `master` 分支会自动构建并发布Docker镜像到 GitHub Container Registry。

## 相关项目

- 引擎源码地址：[http://gitee.com/bgwp/fmj.kt](http://gitee.com/bgwp/fmj.kt)
- 三国霸业地址：[http://gitee.com/bgwp/iBaye](http://gitee.com/bgwp/iBaye)

## 许可证

MIT
