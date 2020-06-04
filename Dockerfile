FROM openjdk:8
USER root
ADD target/mvn-hello-world.war mvn-hello-world.war
EXPOSE 8088
ENTRYPOINT ["java","-jar","mvn-hello-world.war"]
