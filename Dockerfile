FROM centos7_nginx:latest

WORKDIR /app

RUN mkdir /image
RUN mkdir /css
COPY /nginx /usr/local/nginx/conf
COPY /image /usr/local/nginx/html/image
COPY /css /usr/local/nginx/html/css
COPY /css /usr/local/nginx/html/css
COPY index.html /usr/local/nginx/html/index.html