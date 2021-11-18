FROM nginx:1.20

RUN groupmod -g 1000 www-data
RUN usermod -u 1000 www-data
RUN usermod -s /bin/bash www-data

RUN chown -R www-data:www-data /var/cache/nginx
RUN chmod -R g+w /var/cache/nginx

RUN chown -R www-data:www-data /etc/nginx/conf.d

COPY ./docker/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./docker/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

USER www-data
