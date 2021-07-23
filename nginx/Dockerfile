#基准镜像
FROM centos:7
#作者信息
MAINTAINER "aichidoubao"
#工作目录
WORKDIR /usr/local/src/
#定义环境变量
ENV NG_VERSION nginx-1.21.0
#安装epel仓库
RUN yum -y install epel-releasevi
#安装wget
RUN yum -y install wget
#下载nginx文件并解压
RUN wget http://nginx.org/download/$NG_VERSION.tar.gz && tar xzvf $NG_VERSION.tar.gz
#安装编译依赖包
RUN yum install -y gcc gcc-c++ glibc make autoconf openssl openssl-devel && yum install -y pcre-devel libx
slt-devel gd-devel GeoIP GeoIP-devel GeoIP-data
#清理仓库
RUN yum clean all
#创建nginx用户
RUN useradd -M -s /sbin/nologin nginx
#切换工作目录
WORKDIR /usr/local/src/$NG_VERSION
#编译安装nginx
RUN ./configure --user=nginx --group=nginx --prefix=/usr/local/nginx --with-file-aio --with-http_ssl_modul
e --with-http_realip_module --with-http_addition_module --with-http_xslt_module --with-http_image_filter_m
odule --with-http_geoip_module --with-http_sub_module --with-http_dav_module --with-http_flv_module --with
-http_mp4_module --with-http_gunzip_module --with-http_gzip_static_module --with-http_auth_request_module
--with-http_random_index_module --with-http_secure_link_module --with-http_degradation_module --with-http_
stub_status_module && make && make install
#复制测试页面到容器中
ADD index.html /usr/local/nginx/html
#设置容器中要挂在到宿主机的目录
VOLUME /usr/local/nginx/html
#设置sbin环境变量
ENV PATH /usr/local/nginx/sbin:$PATH
#暴露80端口
EXPOSE 80/tcp
ENTRYPOINT ["nginx"]
CMD ["-g","daemon off;"]