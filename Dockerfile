# Use a suitable Java base image
FROM openjdk:11

# Set working directory
WORKDIR /app

# Copy application code to the container
COPY app.jar /app/app.jar

# Expose the necessary port
EXPOSE 8081

# Configure logging to write to a local file in append mode
RUN ln -sf /dev/stdout /app/app.log

# Entrypoint to start the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
