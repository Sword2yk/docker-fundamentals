# Use a specific version of OpenJDK for stability
FROM openjdk:17-jdk

# Set the working directory to /app
WORKDIR /app

# Copy the JAR file into the working directory
COPY ./springboot2-meetingmng-0.0.1-SNAPSHOT.jar /app/meeting-app.jar

# Expose the port the application runs on
EXPOSE 8080

# Run the JAR file with the correct command
CMD ["java", "-jar", "/app/meeting-app.jar"]
