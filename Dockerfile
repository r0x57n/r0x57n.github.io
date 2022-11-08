FROM ruby:latest

RUN gem install jekyll && \
    gem install minima

COPY ./docs /docs
WORKDIR /docs
RUN bundle install

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--livereload", "--host", "0.0.0.0"]
