FROM centos:6.6
RUN yum install -y httpd
COPY index.htm /var/www/html/


EXPOSE 8080
EXPOSE 8443

RUN /usr/libexec/httpd-prepare && rpm-file-permissions

USER 1001

CMD ["/usr/bin/run-httpd"]
