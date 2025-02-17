FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/api-gateway-1.0-SNAPSHOT.jar api-gateway.jar
ENTRYPOINT ["java", "-jar", "api-gateway.jar"]
