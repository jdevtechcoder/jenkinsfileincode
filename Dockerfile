# Use a base image with Java runtime environment
#FROM openjdk:17-jdk-alpine
FROM openjdk:17

# Set the working directory in the container
WORKDIR /jenkinsfileincode

# Copy the Spring Boot JAR file into the container at /app
COPY target/jenkinsfileincode.jar jenkinsfileincode.jar

# Expose the port that your application runs on
EXPOSE 9898

# Set the entrypoint to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "jenkinsfileincode.jar"]