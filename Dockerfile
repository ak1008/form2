# Use a base image with a web server
FROM nginx:alpine

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Create the necessary directories and set permissions
RUN mkdir -p /var/cache/nginx/client_temp /var/cache/nginx/proxy_temp /var/cache/nginx/fastcgi_temp /var/cache/nginx/uwsgi_temp /var/cache/nginx/scgi_temp && \
    chown -R nginx:nginx /var/cache/nginx

# Copy your project files to the web server's default document root
COPY . /usr/share/nginx/html

# Create /run/nginx directory and set ownership
RUN mkdir -p /run/nginx && chown -R nginx:nginx /run/nginx

# Expose the non-privileged port
EXPOSE 8080
