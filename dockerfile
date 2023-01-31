Dockerfile
FROM centos:latest
MAINTAINER onkarlale@gmail.com
RUN yum install -y httpd \
     zip\
     unzip
ADD https://www.free-css.com/assets/files/free-css-templates/page254/photogenic.zip /var/www/html
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/*
RUN rm -rf photogenic photogenic.zip
CMD ["/user/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22

