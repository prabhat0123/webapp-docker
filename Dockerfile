FROM centos:latest
RUN yum -y install httpd
COPY index.htm /var/www/html/
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
