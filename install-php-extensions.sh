#!/bin/bash

# Install pdo_mysql extension
apt-get update && apt-get install -y libmysqlclient-dev
docker-php-ext-install pdo_mysql