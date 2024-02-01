FROM php:7.1

# Install dependencies
RUN apt-get update && apt-get install -y \
    unzip \
    git

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set working directory
WORKDIR /app
