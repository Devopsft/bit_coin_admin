FROM centos:8
RUN yum -y install httpd
WORKDIR /var/www/html
COPY dist/doodem .
EXPOSE 80
CMD  apachectl -D FOREGROUND
