# Use ARG to make the platform configurable
ARG TARGETPLATFORM
ARG BUILDPLATFORM

# Base image with automatic platform detection
FROM --platform=$TARGETPLATFORM eclipse-temurin:17-jdk-focal

# Add labels to track build information
LABEL org.opencontainers.image.description="Spring Boot Application with multi-arch support"
LABEL org.opencontainers.image.architecture="${TARGETPLATFORM}"

# Set working directory
WORKDIR /app

# Copy the application JAR
COPY target/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]