FROM ubuntu:latest
RUN apt-get update -y && apt-get install apache2 libapache2-mod-php php -y
RUN rm /var/www/html/index.html
COPY . /var/www/html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
