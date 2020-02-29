FROM ruby:2.6.5-slim

ENV INSTALL_PATH /unifeso
ENV BUNDLE_PATH /box

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
    build-essential apt-utils libpq-dev imagemagick curl gnupg \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -y nodejs \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update && apt-get install -y yarn

COPY . .

RUN bundle install && yarn