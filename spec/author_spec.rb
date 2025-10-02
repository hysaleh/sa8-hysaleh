require_relative '../lib/author'




RSpec.describe Author do
  describe '#initialize' do
    it 'returns a name and an email' do
      #arrange
      name,email="john","johndoe@gmail.com"
      result=Author.new(name,email)
      expect(result.name).to eq("john")
      expect(result.email).to eq("johndoe@gmail.com")
    end

    it 'raises an error if the name is empty' do
      expect{Author.new("","johndoe@gmail.com")}.to raise_error(ArgumentError)
    end

    it 'raises an error if the email is empty' do
    expect{Author.new("","johndoe@gmail.com")}.to raise_error(ArgumentError)
  end

    it 'raises an error if the email is empty' do
    expect{Author.new("john","johndoegmail.com")}.to raise_error(ArgumentError)
  end



  it 'allows long names' do
    name,email="johhhhhhhhhhhhhhhhhhn","johndoe@gmail.com"
    author=Author.new(name,email)
    expect(author.name).to eq(name)
  end

  end
end


# Positive tests (expected successful behavior)
# Negative tests (error conditions and invalid inputs)
# Edge case tests (boundary conditions, empty data, etc.)
