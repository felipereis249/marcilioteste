FROM wyveo/nginx-php-fpm:php81

ARG dir=/usr/share/nginx/html

# Copy nginx config files
COPY ./default.conf /etc/nginx/conf.d/

# Set working directory
WORKDIR $dir

# Copy site content
COPY . $dir

# Running composer
RUN composer clear-cache && \
    composer self-update --2 && \
    composer install --no-interaction && \
    composer dump-autoload -o
