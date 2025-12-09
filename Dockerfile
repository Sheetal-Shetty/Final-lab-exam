FROM ubuntu:latest
RUN apt-get update -y && apt-get install apache2 libapache2-mod-php php
RUN rm /var/www/html/index.html
COPY . .
EXPOSE 80
Entrypoint apachectl -D FOREGROUND
