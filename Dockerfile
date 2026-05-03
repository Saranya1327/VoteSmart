FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
# Cloud Run expects the container to listen on the port defined by the PORT environment variable
# The default PORT for Cloud Run is 8080.
# Let's configure Nginx to listen on the $PORT environment variable.
CMD sed -i -e 's/listen  *80;/listen '"$PORT"';/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
