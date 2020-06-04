FROM openjdk:8
USER root
RUN usermod -a -G docker jenkins
USER jenkins
ADD target/mvn-hello-world.war .
EXPOSE 8088
ENTRYPOINT ["java","-jar","/mvn-hello-world.war"]
