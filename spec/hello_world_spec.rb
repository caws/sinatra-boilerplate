require 'spec_helper'

Dir.glob("app/hello_world/spec/**/*_spec.rb") do |file|
  require file
end
