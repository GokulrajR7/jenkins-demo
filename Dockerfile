FROM amazonlinux:2023      # Base OS
WORKDIR /app            # Working directory inside container
COPY message.txt .      # Copy file
COPY deploy.sh test.sh .        # Copy script
RUN chmod +x deploy.sh test.sh  # Ensure executable
CMD ["./deploy.sh"]     # Run script when container starts

