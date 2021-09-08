module HelloWorld
  module Controllers
    class HellosController < ApplicationController
      get '/hellos' do
        hellos = Models::Hello.new

        Serializers::HelloSerializer.render(hellos)
      end

      get '/hellos/:uuid' do
        hello = Models::Hello.new

        Serializers::HelloSerializer.render(hello)
      end
    end
  end
end