FROM centos_7nginx:latest

WORKDIR /app

COPY * /usr/local/nginx/html