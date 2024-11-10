# Use an OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file created by the Spring Boot build into the container
COPY target/*.jar app.jar

# Expose the port the Spring Boot application will run on
EXPOSE 8081

# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
