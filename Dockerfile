# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre

EXPOSE 8080

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container at /app
ADD testing-web-0.0.1-SNAPSHOT.jar /app/testing-web-0.0.1-SNAPSHOT.jar

# Specify the command to run on container start
CMD ["java", "-jar", "testing-web-0.0.1-SNAPSHOT.jar"]
