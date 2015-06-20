FROM siuyin/php:5.6.9-fpm-pg
RUN apt-get update && apt-get install -y \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libpng12-dev \
  && docker-php-ext-install  mbstring \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ \
  --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install gd
CMD ["php-fpm"]
