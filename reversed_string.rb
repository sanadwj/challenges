class String
  def alt_string
    reversed_string = ""

    string_length = self.length - 1

    string_length.downto(0).each do |c|
      reversed_string << self[c]
    end

    reversed_string
  end
end

describe 'alt string' do
  it 'reverse the charectares' do
    expect('hello'.alt_string).to eq('olleh')
  end
end
