require 'rubygems'
require 'bundler'
require 'sinatra/contrib'
require 'active_support/dependencies'

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
Bundler.require :default, (ENV['RACK_ENV'] || :development).to_sym

require 'active_support'
require_relative '../lib/list_directories'
require_relative '../lib/application_configuration'

ActiveSupport::Dependencies.autoload_paths += ListDirectories.new.call('./app')

ApplicationConfiguration.configure do |config|
  config.some_config = 'Added in Boot'
end

require_relative "./environments/#{ENV['RACK_ENV']}" if ENV['RACK_ENV'].present?