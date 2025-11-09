# Use official Java 17 runtime (Temurin image works perfectly on Render)
FROM eclipse-temurin:17-jdk-jammy

# Set working directory
WORKDIR /app

# Copy jar file from target folder
COPY target/online-auction-system-1.0.0.jar app.jar

# Expose Spring Boot default port
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
