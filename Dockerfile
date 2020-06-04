FROM openjdk:8
USER jenkins
ADD target/mvn-hello-world.war .
EXPOSE 8088
ENTRYPOINT ["java","-jar","/mvn-hello-world.war"]
