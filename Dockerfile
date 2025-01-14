# Use an appropriate base image
FROM adoptopenjdk/openjdk11:latest

# Set the application home directory
ENV APP_HOME /usr/src/app

# Create the application directory
RUN mkdir -p $APP_HOME

# Expose the application port
EXPOSE 8080

# Copy the built JAR file
COPY target/*.jar $APP_HOME/

# Set the working directory
WORKDIR $APP_HOME

# Run the application
CMD ["java", "-jar", "app.jar"]
