#!/usr/bin/env bash
set -e

# Install bundler if not already installed
if ! command -v bundle > /dev/null 2>&1; then
  echo "Bundler not found. Installing Bundler..."
  gem install bundler
fi

# Install project gems locally
bundle config set --local path 'vendor/bundle'
bundle install

echo "\nAll gems installed. Run 'bundle exec jekyll serve' to start the site."
