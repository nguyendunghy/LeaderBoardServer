# Use official Java runtime as base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the JAR file built by Maven/Gradle
COPY target/*.jar app.jar
# or for Gradle:
# COPY build/libs/*.jar app.jar

# Expose port (default Spring Boot port)
EXPOSE 8080

# Run the app
ENTRYPOINT ["java","-jar","app.jar"]