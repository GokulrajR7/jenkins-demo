FROM amazonlinux:2023      # Base OS
WORKDIR /app            # Working directory inside container
COPY message.txt .      # Copy file
COPY build.txt .
COPY deploy.sh test.sh .
RUN chmod +x deploy.sh test.sh  # Ensure executable
CMD ["./deploy.sh"]     # Run script when container starts

