FROM openjdk:8-jre-slim

VOLUME /tmp

# Copy the jar with correct path (use COPY instead of ADD — more clear for JAR files)
COPY target/springboot-application-0.0.1-SNAPSHOT.jar /springboot-application.jar

# Define default command
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/springboot-application.jar"]

# Optional: expose port (if your app runs on 8080 for example)
EXPOSE 8080
