# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.3.0"

gem "puma", ">= 5.0"
gem "rails", "~> 7.1.3"
gem "sqlite3", "~> 1.4"

gem "jbuilder"
gem "rack-cors"

gem "bootsnap", require: false
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[mri windows]
end

group :development do
  gem "rubocop", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  # gem "spring"
end

gem "litestack", "~> 0.4.2"
