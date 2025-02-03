FROM openjdk:21

# Install Maven
RUN apt-get update && apt-get install -y maven

WORKDIR /app
COPY . /app

# Build the project
RUN mvn clean package -DskipTests

# Expose the application port
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "target/final-0.0.1-SNAPSHOT.jar"]
