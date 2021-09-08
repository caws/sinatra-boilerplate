module HelloWorld
  module Serializers
    class HelloSerializer < ApplicationSerializer
      fields :message
    end
  end
end