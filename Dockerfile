FROM centos:latest

RUN yum -y install httpd perl

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart 
ADD run-httpd.sh /run-httpd.sh
RUN chmod 777 /run-httpd.sh

ENTRYPOINT ["/run-httpd.sh"]

WORKDIR /var/www/html
ADD prova.html /prova.html
