# ===== Build stage =====
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Download dependencies before copying source code
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code and build the application
COPY src ./src
RUN mvn clean package -DskipTests

# ===== Run stage =====
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app

# Copy the built jar file from the build stage
COPY --from=build /app/target/*.jar app.jar

# Set default JAVA_OPTS, can be overridden by environment variable
ENV JAVA_OPTS=""

# Expose the application port
EXPOSE 8080

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
