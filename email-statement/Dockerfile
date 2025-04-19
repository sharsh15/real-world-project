FROM openjdk:17-jdk-slim
WORKDIR /app
COPY ./target/email-statement.jar email-statement.jar
ENTRYPOINT ["java", "-jar", "email-statement.jar"]