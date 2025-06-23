# Use a base image with a web server
FROM nginx:alpine

    # Copy your project files to the web server's default document root
    COPY . /usr/share/nginx/html
    
    # Expose the port the web server is listening on
    EXPOSE 80
    