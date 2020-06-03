FROM php:7.3-apache
RUN docker-php-ext-install mysqli
RUN apt-get update \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip
RUN apt-get update \
    && apt-get -y install openssh-server=7.8
RUN apt-get update \
    && apt-get -y install curl
RUN apt-get update \
    && apt-get -y install chrony
RUN apt-get update \
    && apt-get -y install libssl-dev
RUN apt-get update \
    && apt-get -y install postfix
RUN apt-get update \
    && apt-get -y install rsync
RUN apt-get update \
    && apt-get -y install cron
RUN apt-get update \
    && apt-get -y install logrotate
RUN apt-get update \
    && apt-get -y install imagemagick
RUN curl -s https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer