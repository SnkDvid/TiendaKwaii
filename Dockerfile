FROM php:8.2-cli

# Install necessary packages
RUN apt-get update && apt-get install -y libmysqlclient-dev

# Install pdo_mysql extension
RUN docker-php-ext-install pdo_mysql

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install project dependencies
RUN composer install

# Run build commands
RUN npm install && npm run build && php artisan migrate --force