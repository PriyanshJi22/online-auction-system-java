# Use official Java 17 runtime
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy the JAR file from target folder
COPY target/online-auction-system-1.0.0.jar app.jar

# Expose Spring Boot default port
EXPOSE 8080

# Enable H2 Console for remote access (educational purpose)
ENTRYPOINT ["java", "-Dspring.h2.console.settings.webAllowOthers=true", "-jar", "app.jar"]
