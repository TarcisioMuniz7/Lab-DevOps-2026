FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    apache2 \
    php \
    libapache2-mod-php \
    php-mysql \
    wget \
    tar \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

RUN wget https://wordpress.org/latest.tar.gz \
    && tar -xvzf latest.tar.gz --strip-components=1 \
    && rm latest.tar.gz

RUN chown -R www-data:www-data /var/www/html/

VOLUME ["/var/www/html/wp-content"]

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
