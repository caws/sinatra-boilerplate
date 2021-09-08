require 'spec_helper'

class MockLister
  attr_reader :data

  def initialize(mocked_dirs: ['one', 'two'])
    @mocked_dirs = mocked_dirs
  end

  def glob(*args)
    @mocked_dirs.each do |mock_dir|
      return [] if args[0].include?(mock_dir)
    end

    @data = args
    @mocked_dirs
  end
end

RSpec.describe ListDirectories do
  specify 'should list expected directories' do
    lister = MockLister.new

    expect(
      ListDirectories.new(
        system_directory_lister: lister
      ).call('.')
    ).to eq(['one', 'two'])

    expect(lister.data).to eq(['.*/'])
  end
end