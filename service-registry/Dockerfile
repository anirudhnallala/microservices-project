FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/service-registry-1.0-SNAPSHOT.jar service-registry.jar
ENTRYPOINT ["java", "-jar", "service-registry.jar"]
