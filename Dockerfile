FROM maven:alpine
MAINTAINER Humberto Pinheiro <humbhenri@gmail.com>
VOLUME /tmp
ADD . /tmp
WORKDIR /tmp
RUN mvn clean package
ADD target/service-discovery-0.0.1-SNAPSHOT.jar /app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Xmx100M", "-jar", "/app.jar"]
EXPOSE 8761