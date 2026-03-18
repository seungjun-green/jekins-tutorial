# Use the standard Temurin image (better support for ARM64/Mac Silicon)
FROM eclipse-temurin:17-jdk

# Create the same app.jar
COPY build/libs/*.jar app.jar

# Run it
ENTRYPOINT ["java", "-jar", "/app.jar"]