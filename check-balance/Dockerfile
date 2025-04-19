FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/check-balance.jar check-balance.jar
ENTRYPOINT ["java", "-jar", "check-balance.jar"]
