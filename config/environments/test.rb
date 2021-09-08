require_relative '../../lib/application_configuration'

ApplicationConfiguration.configure do |config|
  config.environment = 'test'
end
