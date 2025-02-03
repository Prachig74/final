# Use Maven and OpenJDK image
FROM maven:3.8.6-openjdk-21-slim AS build

WORKDIR /app
COPY . /app

# Build the project
RUN mvn clean package -DskipTests

# Final image to run the app
FROM openjdk:21-slim

WORKDIR /app
COPY --from=build /app/target/final-0.0.1-SNAPSHOT.jar /app/final-0.0.1-SNAPSHOT.jar

# Expose the application port
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "final-0.0.1-SNAPSHOT.jar"]
