FROM openjdk:17.0.2-jdk

# Expose application port
EXPOSE 8080

# Creatw a new folder for working directory in the container
RUN mkdir /opt/app

# Copy jar file into container
COPY build/libs/docker-exercises-project-1.0-SNAPSHOT.jar /opt/app

# Set working directory inside container
WORKDIR /opt/app

# Run the application
CMD ["java", "-jar", "docker-exercises-project-1.0-SNAPSHOT.jar"]