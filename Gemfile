# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'aws-sdk', '~> 3.1'
gem 'bootsnap', require: false
gem 'bootstrap', '~> 5.1', '>= 5.1.3'
gem 'devise'
gem 'importmap-rails'
gem 'jbuilder'
gem 'kt-paperclip', '~> 6.4', '>= 6.4.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.3'
gem 'rubocop'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'sqlite3'
  gem 'web-console'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
