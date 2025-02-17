# Use a base image with OpenJDK 17
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the host machine to the container
COPY target/order-service-1.0-SNAPSHOT.jar order-service.jar

# Expose the port your app will run on (optional, if you have a specific port)
EXPOSE 8082

# Set the entrypoint to run the application
ENTRYPOINT ["java", "-jar", "/app/order-service.jar"]

