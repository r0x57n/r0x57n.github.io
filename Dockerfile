FROM ruby:latest

COPY ./docs/Gemfile /docs/Gemfile
WORKDIR /docs
RUN bundle install

EXPOSE 4000
EXPOSE 35729
