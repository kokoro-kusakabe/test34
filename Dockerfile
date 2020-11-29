FROM ruby:2.6.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /test34
COPY Gemfile Gemfile.lock /test34/
RUN bundle install