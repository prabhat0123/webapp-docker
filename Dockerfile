FROM centos:latest
RUN yum -y install httpd
COPY index.htm /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
