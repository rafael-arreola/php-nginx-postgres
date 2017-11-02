from webdevops/php-nginx:7.0
RUN apt-get update \
	&& apt-get install -y libpq-dev \
	&& docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql