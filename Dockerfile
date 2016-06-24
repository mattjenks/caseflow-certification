#
# https://hub.docker.com/_/ruby/
# https://github.com/mattjenks/caseflow-certification
#
FROM ruby:2.3.1
MAINTAINER Matt Jenks <matthew.jenks@halfaker.com>

#
# create work dir
#
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN gem install rails
RUN bundle install --without production staging

#
# Call script to run the ruby app
#
CMD ["./rails_start.sh"]


