FROM php:7.2-fpm

RUN groupmod -g 1000 www-data
RUN usermod -u 1000 www-data
RUN usermod -s /bin/bash www-data

COPY ./docker/php/php-fpm.d/zz-www.conf /usr/local/etc/php-fpm.d/zz-www.conf
COPY ./docker/php/www.conf /usr/local/etc/php-fpm.d/www.conf

RUN chown -R www-data:www-data /var/www/html
RUN chmod +x /var/www/html

RUN mkdir /var/run/php-fpm \
       && chown -R www-data:www-data /var/www/ \
       && chown -R www-data:www-data /var/run/ \
       && chown -R www-data:www-data /var/log/

USER www-data
