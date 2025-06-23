FROM openjdk:8-jre-slim

VOLUME /tmp

COPY target/springboot-application-0.0.1-SNAPSHOT.jar springboot-application.jar

ENTRYPOINT ["java", "-jar", "/springboot-application.jar"]

EXPOSE 8080
