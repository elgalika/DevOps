# Use a suitable Java base image
FROM openjdk:11

# # Maintainer information (optional)
# LABEL maintainer="Your Name <your.email@example.com>"

# Set working directory
WORKDIR /app

# Copy application code to the container
COPY RandomNumberGenerator-0.0.1-SNAPSHOT.jar /app/app.jar

# Configure logging to write to a local file in append mode
RUN ln -sf /dev/stdout /app/app.log

# Entrypoint to start the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
