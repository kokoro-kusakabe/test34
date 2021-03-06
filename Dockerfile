FROM ruby:2.6.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /test34
ADD Gemfile /test34/Gemfile
ADD Gemfile.lock /test34/Gemfile.lock

RUN gem install bundler
RUN bundle install