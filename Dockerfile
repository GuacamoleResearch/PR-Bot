FROM ruby:2.7-alpine

WORKDIR /server
COPY ./Gem* /server/
COPY ./*.rb /server/

RUN gem install bundler
RUN bundle install

EXPOSE 3000
ENTRYPOINT exec ruby server.rb
