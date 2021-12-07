FROM ruby:2.5
RUN apt-get update -qq && apt-get install -qqy build-essential nodejs
RUN apt-get -y install git
COPY . .
EXPOSE 3000
ENV RAILS_ENV production
ENV RACK_ENV production
ENTRYPOINT ["./entrypoint.sh"]
