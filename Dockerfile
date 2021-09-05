FROM php:7.4-apache
COPY index.php /var/www/html
RUN rm /etc/apache2/sites-available/default-ssl.conf
RUN sed -ri -e 's/:80/:8080/g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's/Listen 80/Listen 8080/' /etc/apache2/sites-available/*.conf
EXPOSE 8080
