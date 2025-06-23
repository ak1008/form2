FROM nginxinc/nginx-unprivileged:stable

# Arbeitsverzeichnis setzen (optional)
WORKDIR /app

# Eigene statische Inhalte (optional)
COPY ./html /usr/share/nginx/html

# Eigene Konfiguration (optional)
COPY ./nginx.conf /etc/nginx/nginx.conf

# Verzeichnisse beschreibbar für Gruppe 0 (OpenShift UID läuft in Gruppe 0)
RUN chgrp -R 0 /etc/nginx /usr/share/nginx /var/cache/nginx \
 && chmod -R g=u /etc/nginx /usr/share/nginx /var/cache/nginx

# Expose unprivilegierten Port
EXPOSE 8080

# CMD ist schon korrekt im Base-Image, aber zur Klarheit:
CMD ["nginx", "-g", "daemon off;"]
