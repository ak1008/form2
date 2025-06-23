# Use official Nginx image
FROM nginx:alpine

# Copy custom nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Copy website content
COPY . /usr/share/nginx/html

# Set necessary permissions for the nginx user
RUN mkdir -p /usr/share/nginx/html && \
    chown -R nginx:nginx /usr/share/nginx/html

# Set the user to non-root
USER nginx

# Use non-root port
EXPOSE 8080

# Entrypoint stays as default, which runs nginx
