module HelloWorld
  class Application < Sinatra::Base
    use Controllers::HellosController
  end
end