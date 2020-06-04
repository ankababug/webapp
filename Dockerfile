FROM openjdk:8
USER jenkins
EXPOSE 8088
ADD target/mvn-hello-world.war .
ENTRYPOINT ["java","-jar","/mvn-hello-world.war"]
