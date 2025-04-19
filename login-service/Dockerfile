FROM openjdk:17-jdk-slim
WORKDIR /app
COPY ./target/login-service.jar login-service.jar
ENTRYPOINT ["java", "-jar", "login-service.jar"]