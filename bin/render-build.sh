#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec npm install
bundle exec yarn
bundle exec rake db:migrate
bundle exec rake db:seed