FROM centos:7
USER root
RUN yum install httpd -y
RUN echo "hai ankababu" >> /var/www/html/index.html
CMD ["echo","image created"]
