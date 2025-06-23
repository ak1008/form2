FROM nginxinc/nginx-unprivileged:stable

# Eigener statischer Pfad, nicht das vorinstallierte /usr/share/nginx/html
WORKDIR /app

# Eigene Konfig & Inhalte in sichere eigene Pfade
COPY ./html /app/html
COPY ./nginx.conf /etc/nginx/nginx.conf

# Kein USER setzen – OpenShift macht das dynamisch
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
