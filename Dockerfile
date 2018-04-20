FROM centos:latest
RUN yum -y update && \
    yum -y install httpd php
COPY ./conf/httpd.conf /etc/httpd/conf/httpd.conf
WORKDIR /var/www/html
ADD ./public-html /var/www/html
EXPOSE 80
