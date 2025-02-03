FROM openjdk:21

WORKDIR /app
COPY . /app

# Build the project (Render will automatically trigger this build)
RUN mvn clean package -DskipTests

# Expose the application port
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "target/final-0.0.1-SNAPSHOT.jar"]
