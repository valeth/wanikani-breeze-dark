FROM ruby:2-alpine
RUN apk add --update build-base libffi-dev
VOLUME [ "/usr/src/app" ]
WORKDIR /usr/src
COPY Gemfile Gemfile.lock ./
RUN bundle install
WORKDIR /usr/src/app
CMD [ "bundler", "exec", "rake" ]
