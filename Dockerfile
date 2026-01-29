# Base OS
FROM amazonlinux:2023

# Working directory inside container
WORKDIR /app

# Copy files
COPY message.txt .
COPY build.txt .
COPY deploy.sh test.sh .

# Ensure scripts are executable
RUN chmod +x deploy.sh test.sh

# Run script when container starts
CMD ["./deploy.sh"]


