FROM openjdk:8-jdk-alpine
MAINTAINER Humberto Pinheiro <humbhenri@gmail.com>
VOLUME /tmp
ADD target/service-discovery-0.0.1-SNAPSHOT.jar /app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Xmx100M", "-jar", "/app.jar"]
EXPOSE 8761