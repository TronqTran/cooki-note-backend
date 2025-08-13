# ===== Build stage =====
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Copy pom.xml trước để cache dependency
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code và build
COPY src ./src
RUN mvn clean package -DskipTests

# ===== Run stage =====
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app

# Copy file jar từ build stage
COPY --from=build /app/target/*.jar app.jar

# Cấu hình JVM options (có thể override)
ENV JAVA_OPTS=""

# Mặc định Spring Boot đọc biến từ ENV trong docker-compose.yml
EXPOSE 8080

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
