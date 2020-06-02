FROM openjdk:8
EXPOSE 8088
ADD target/mvn-hello-world.war mvn-hello-world.war
ENTRYPOINT ["jana","-jar","/mvn-hello-world.war"]
