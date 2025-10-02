require_relative '../lib/commit'


RSpec.describe Commit do
  describe '#initialize' do
    it 'returns the message, author, parent and timestamp ' do
      #arrange
      message, author,parent,timestamp="this is a message","john","johnparent",
      result=Commit.new(message, author,parent,timestamp)
      expect(result.message).to eq("this is a message")
    end

    it 'raises an error if the message is empty' do
      expect{Commit.new()}.to raise_error(ArgumentError)
    end

    it 'raises an error if there is no author' do
    expect{Commit.new()}.to raise_error(ArgumentError)
  end

  end
  end
end
