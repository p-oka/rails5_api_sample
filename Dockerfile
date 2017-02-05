FROM ruby:2.3.1

ENV APP_ROOT /app

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev mysql-client

RUN gem install bundler

RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install -j4

ADD . $APP_ROOT
