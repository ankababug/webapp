/*FROM openjdk:8
USER root
ADD target/mvn-hello-world.war mvn-hello-world.war
EXPOSE 8088
ENTRYPOINT ["java","-jar","mvn-hello-world.war"]
*/
FROM centos:7
USER root
RUN yum install httpd -y
RUN echo "hai ankababu" >> /var/www/html/index.html
CMD ["echo","image created"]
