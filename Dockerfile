# Use a lightweight base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the local HTML file to the container
COPY index.html .

# Expose port 80 for the web server
EXPOSE 80

# Command to start the web server
CMD ["nginx", "-g", "daemon off;"]
