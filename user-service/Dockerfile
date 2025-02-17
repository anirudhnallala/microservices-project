# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file from the target directory into the container
COPY target/user-service-1.0-SNAPSHOT.jar user-service.jar

# Expose the port the application will run on
EXPOSE 8081

# Command to run the JAR file when the container starts
ENTRYPOINT ["java", "-jar", "/app/user-service.jar"]

