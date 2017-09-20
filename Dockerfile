FROM ruby:2.3
RUN mkdir /ms_create_events
WORKDIR /ms_create_events
ADD Gemfile /ms_create_events/Gemfile
ADD Gemfile.lock /ms_create_events/Gemfile.lock
RUN bundle install
ADD . /ms_create_events
