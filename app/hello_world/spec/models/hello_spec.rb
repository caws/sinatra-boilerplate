require_relative '../../../../spec/spec_helper'

module HelloWorld
  module Models
    RSpec.describe Hello do
      specify do
        expect(Hello.new.message).to eq('World')
      end
    end
  end
end