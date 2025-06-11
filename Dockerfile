# 使用Nginx作为基础镜像
FROM nginx:alpine

# 复制项目文件到容器中
COPY . /usr/share/nginx/html

# 复制Nginx配置文件
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# 暴露80端口
EXPOSE 80

# 启动Nginx
CMD ["nginx", "-g", "daemon off;"]
