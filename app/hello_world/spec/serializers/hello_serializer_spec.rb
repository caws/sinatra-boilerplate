require_relative '../../../../spec/spec_helper'

module HelloWorld
  module Serializers
    RSpec.describe HelloSerializer do
      specify do
        hello = Models::Hello.new

        expect(HelloSerializer.render(hello)).to eq({"message" => 'World'}.to_json)
      end
    end
  end
end