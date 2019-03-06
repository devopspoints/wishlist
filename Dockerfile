FROM ubuntu:18.04

MAINTAINER devopspoints

RUN apt-get update

RUN apt-get install -y vim wget dialog net-tools nano

RUN apt-get install -y nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN apt-get install -y php7.2-fpm

COPY ./config/start.sh /start.sh
RUN chmod 777 -R /start.sh

COPY ./config/nginx/default /etc/nginx/sites-enabled/default

COPY ./wishlist /var/www/html

EXPOSE 8080


CMD bash -C '/start.sh';'bash'
