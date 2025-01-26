FROM --platform=linux/amd64 eclipse-temurin:17-jdk-focal

WORKDIR /app

COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]