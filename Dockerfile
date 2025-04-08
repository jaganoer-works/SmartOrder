# ベースイメージ
FROM php:8.3-fpm

# システムパッケージのインストール
RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    zip \
    unzip \
    git \
    curl \
    libpq-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install pdo pdo_pgsql gd zip

# Composer インストール
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# 作業ディレクトリ設定
WORKDIR /var/www

# Laravel インストール準備
COPY . /var/www

# Laravel パーミッション調整
RUN chown -R www-data:www-data /var/www/storage /var/www/bootstrap/cache

# Composer install
RUN composer install --no-dev --optimize-autoloader

# Expose port
EXPOSE 9000

# PHP-FPM 起動
CMD ["php-fpm"]
