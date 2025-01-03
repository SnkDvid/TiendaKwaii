#!/bin/bash

# Install pdo_mysql extension
apt-get update && apt-get install -y libmysqlclient-dev
pecl install pdo_mysql
docker-php-ext-enable pdo_mysql