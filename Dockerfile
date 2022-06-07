FROM centos:7
RUN yum -y install httpd
WORKDIR /var/www/html
COPY dist/spruha .
EXPOSE 80
CMD  apachectl -D FOREGROUND
