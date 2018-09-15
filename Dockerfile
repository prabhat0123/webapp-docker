FROM centos:6.6
RUN yum install -y httpd
COPY index.htm /var/www/html/
CMD sudo su
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
