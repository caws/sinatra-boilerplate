require_relative '../../../../spec/spec_helper'

module HelloWorld
  module Controllers
    RSpec.describe HellosController do
      specify do
        get '/hellos'

        expect(last_response.status).to eq(200)
        expect(JSON.parse(last_response.body)).to eq({"message" => 'World'})
      end
    end
  end
end