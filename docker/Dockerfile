FROM ruby:2.5.0-alpine3.7
ENV LANG C.UTF-8
RUN set -x && mkdir /usr/src/app
WORKDIR /usr/src/app
COPY Gemfile .
COPY Gemfile.lock .
RUN set -ex \
	&& apk add --no-cache --virtual .rails-builddeps \
		gcc libc-dev make postgresql-dev \
	&& bundle install \
	&& apk del .rails-builddeps \
	&& apk add --no-cache --virtual .rails-rundeps \
		tzdata postgresql-libs yarn
