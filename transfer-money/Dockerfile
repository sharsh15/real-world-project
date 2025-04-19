FROM openjdk:17-jdk-slim
WORKDIR /app
COPY ./target/transfer-money.jar transfer-money.jar
ENTRYPOINT ["java", "-jar", "transfer-money.jar"]