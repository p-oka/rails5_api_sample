FROM ruby:2.3.1

ENV APP_ROOT /app

RUN apt-get update && \
    apt-get install -y build-essential \
                       mysql-client \
                       locales && \
    sed -i 's/#.*ja_JP\.UTF/ja_JP\.UTF/' /etc/locale.gen && \
    locale-gen && \
    update-locale LANG=ja_JP.UTF-8

ENV LC_ALL=ja_JP.UTF-8

RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install -j4

ADD . $APP_ROOT
