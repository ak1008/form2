FROM nginxinc/nginx-unprivileged:stable

# Eigener statischer Pfad, nicht das vorinstallierte /usr/share/nginx/html
WORKDIR /app

# Eigene Konfig & Inhalte in sichere eigene Pfade
COPY ./html /app/html
COPY ./nginx.conf /etc/nginx/nginx.conf

# Gib nur deinem eigenen Pfad Rechte (OpenShift UID = Mitglied von Gruppe 0)
RUN mkdir -p /app/html /var/cache/nginx \
 && chgrp -R 0 /app /var/cache/nginx \
 && chmod -R g=u /app /var/cache/nginx

# Kein USER setzen – OpenShift macht das dynamisch
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
