#!/usr/bin/env bash
set -e
git clone $REPO app
cd app
сp Gemfile Gemfile.lock
bundle install --without development test
bundle exec rake assets:precompile
bundle exec rails server
