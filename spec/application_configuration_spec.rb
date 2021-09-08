require 'spec_helper'

RSpec.describe ApplicationConfiguration do
  specify 'should store configs' do
    ApplicationConfiguration.configure do |configure|
      configure.something = 'is here'
    end

    expect(
      ApplicationConfiguration.config.something
    ).to eq('is here')
  end
end