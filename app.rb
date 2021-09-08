require_relative 'config/boot'

class App < Sinatra::Base
  register Sinatra::Contrib

  use HelloWorld::Application
end
