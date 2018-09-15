FROM centos:6.6
RUN yum install -y httpd
COPY index.htm /var/www/html/
EXPOSE 8080
USER 1001
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]




