FROM ruby:2.3.6-alpine

WORKDIR /app

COPY Gemfile* ./
COPY vendor/cache vendor/cache

RUN apk add --no-cache build-base \
    && gem install bundler \
    && bundle install --local \
    && apk del build-base

COPY . .

CMD /app/entrypoint.rb
