ENV['RACK_ENV'] = 'test'
abort('DATABASE_URL environment variable is set') if ENV['DATABASE_URL']

$LOAD_PATH << '.'
require_relative '../lib/list_directories'
require 'active_support'

ActiveSupport::Dependencies.autoload_paths += ListDirectories.new.call('../../app')

require_relative '../app'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'api-test'
)

DatabaseCleaner.strategy = :truncation

module SinatraApp
  def app() App end
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect
    mocks.verify_partial_doubles = true
  end

  config.run_all_when_everything_filtered = true
  config.order = :random

  config.include Rack::Test::Methods
  config.include SinatraApp

  config.before(:all) do
    DatabaseCleaner.clean
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end
end

ActiveRecord::Migration.maintain_test_schema!
