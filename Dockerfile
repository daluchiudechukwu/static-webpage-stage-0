# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy our Nginx configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/

# Copy the HTML, CSS, and JavaScript files to the appropriate directory
COPY html /usr/share/nginx/html
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
