FROM php:5.6.9-fpm
RUN apt-get update && apt-get install -y \
  libpq-dev \
  && docker-php-ext-install pdo pdo_pgsql
CMD ["php-fpm"]
