FROM centos7_nginx:latest

WORKDIR /app

COPY * /usr/local/nginx/html