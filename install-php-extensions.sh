#!/bin/bash

# Install necessary packages
apt-get update && apt-get install -y libmysqlclient-dev

# Install pdo_mysql extension
docker-php-ext-install pdo_mysql