# Use nginx as base image (web server included)
FROM nginx:latest

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy build artifact / content
COPY message.txt /usr/share/nginx/html/index.html

# Expose port 80 inside container
EXPOSE 80

# Nginx runs automatically and keeps container alive
CMD ["nginx", "-g", "daemon off;"]


