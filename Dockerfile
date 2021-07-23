FROM centos7_nginx:latest

WORKDIR /app

RUN mkdir /image
RUN mkdir /css

COPY /image/pkq.png /usr/local/nginx/html/image
COPY /css/FiraCode.css /usr/local/nginx/html/css
COPY /css/nutssss.css.css /usr/local/nginx/html/css
COPY index.html /usr/local/nginx/html