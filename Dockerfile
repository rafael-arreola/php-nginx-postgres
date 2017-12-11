from webdevops/php-nginx:alpine-php7
RUN set -x && \
	apk add --no-cache --update --virtual build-deps gcc python-dev musl-dev && \	
	apk add postgresql-dev \
	php7-pdo_pgsql && \
	docker-image-cleanup
