FROM wyveo/nginx-php-fpm:php81

ARG dir=/usr/share/nginx/html

# Set working directory
WORKDIR $dir

# Copy site content
COPY --chown=nginx:nginx . $dir

# Running composer
RUN composer clear-cache && \
    composer self-update --2 && \
    composer install --no-interaction && \
    composer dump-autoload -o
