FROM phpdockerio/php7-fpm:latest
WORKDIR "/var/www/html"

RUN apt-get update \
 && apt-get -y -qq --no-install-recommends install \
        ca-certificates \
        curl \
        git \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        libpq-dev \
        libxml2-dev \
        libzip-dev \
        mc \
        ssh \
        wget

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install  php7.0-mongodb php7.0-pgsql php7.0-redis php7.0-gd php7.0-soap php7.0-ssh2 php7.0-xdebug php7.0-xsl php7.0-mbstring \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

run composer global require hirak/prestissimo
