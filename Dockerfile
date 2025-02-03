# Use Maven image to build the project
FROM maven:3.8.6-openjdk-11 AS build

# Set working directory
WORKDIR /app

# Copy pom.xml and source code to container
COPY pom.xml /app
COPY src /app/src

# Build the project
RUN mvn clean package -DskipTests

# Use OpenJDK image to run the application
FROM openjdk:21-slim

# Set working directory
WORKDIR /app

# Copy the JAR file from the build stage to the current stage
COPY --from=build /app/target/final-0.0.1-SNAPSHOT.jar /app/final-0.0.1-SNAPSHOT.jar

# Expose the application port
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "final-0.0.1-SNAPSHOT.jar"]
