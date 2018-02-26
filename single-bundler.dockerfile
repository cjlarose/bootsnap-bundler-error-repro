FROM ruby:2.3.6-alpine

WORKDIR /app

COPY Gemfile* ./
COPY vendor/cache vendor/cache

RUN apk add --no-cache build-base \
    && bundle install --local \
    && apk del build-base

COPY . .

CMD /app/entrypoint.rb
