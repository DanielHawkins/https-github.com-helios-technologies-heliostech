FROM ruby:2.2.0
MAINTAINER support@heliostech.fr

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  mysql-client \
  nginx \
  vim

COPY config/web.conf /etc/nginx/sites-enabled/default

ADD . /home/app

ENV HOME /home/app
ENV RAILS_ENV production

WORKDIR /home/app

#
# Bundle install as root
#

RUN gem install bundler
RUN bundle install

EXPOSE 80

RUN bundle exec rake assets:precompile --trace
RUN chgrp -R www-data $HOME/public
RUN find $HOME/public -type f -exec chmod g+r {} \;
RUN find $HOME/public -type d -exec chmod g+rx {} \;

CMD ["bundle", "exec", "foreman", "start", "-f", "Procfile"]
