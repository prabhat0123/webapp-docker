FROM centos:latest
RUN yum -y install httpd
COPY index.htm /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
