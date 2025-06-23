# Use a base image with a web server
FROM nginx:alpine

# Create the necessary directories and set permissions
RUN mkdir -p /var/cache/nginx/client_temp /var/cache/nginx/proxy_temp /var/cache/nginx/fastcgi_temp /var/cache/nginx/uwsgi_temp /var/cache/nginx/scgi_temp && \
    chown -R nginx:nginx /var/cache/nginx

# Copy your project files to the web server's default document root
COPY . /usr/share/nginx/html

# Expose the port the web server is listening on
EXPOSE 3000
