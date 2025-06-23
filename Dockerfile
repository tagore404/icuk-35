# Use OpenJDK 17 (or 11 if you prefer)
FROM eclipse-temurin:17-jdk-jammy

# Add a volume to store temp files
VOLUME /tmp

# Copy the JAR file into the container
ADD target/*.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]

# Expose port 8080
EXPOSE 8080
