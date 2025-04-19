FROM openjdk:17-jdk-slim
WORKDIR /app
COPY ./target/dashboard-service.jar dashboard-service.jar
ENTRYPOINT ["java", "-jar", "dashboard-service.jar"]