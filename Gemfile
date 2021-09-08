source 'https://rubygems.org'

ruby '3.0.1'

gem "activemodel", require: "active_model"
gem 'activerecord'
gem 'activesupport', require: %w[
  active_support/dependencies
]
gem 'blueprinter'
gem 'foreman'
gem 'pg'
gem 'puma'
gem 'rake'
gem 'rack-parser', :require => 'rack/parser'
gem 'sinatra', require: 'sinatra/base'
gem 'sinatra-activerecord'
gem 'sinatra-contrib', require: false

group :development, :test do
  gem 'pry'
end

group :test do
  gem 'database_cleaner'
  gem 'rack-test'
  gem 'rspec'
end
