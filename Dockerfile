#
#
#FROM openjdk:21
#
#WORKDIR /app
#COPY . /app
#
## Build the project (only needed if Render doesn't automatically build it)
#RUN mvn clean package -DskipTests
#
##COPY target/final-0.0.1-SNAPSHOT.jar /app/final-0.0.1-SNAPSHOT.jar.jar
#COPY target/final-0.0.1-SNAPSHOT.jar /app/final-0.0.1-SNAPSHOT.jar
#
#
#
#EXPOSE 8080
#
#ENTRYPOINT ["java", "-jar", "final-0.0.1-SNAPSHOT.jar"]


FROM openjdk:21

WORKDIR /app

# Copy the Maven built JAR from target folder (ensure it's in your local target folder first)
COPY target/final-0.0.1-SNAPSHOT.jar /app/final-0.0.1-SNAPSHOT.jar

# Expose the application port
EXPOSE 8080

# Run the application when the container starts
ENTRYPOINT ["java", "-jar", "final-0.0.1-SNAPSHOT.jar"]
