def length_of_last_word(s)
  if s.to_s.strip.empty?
    0
  else
    s.split(" ").last.length
  end
end

describe 'length of last word' do
  it 'return the length of the last word in a string' do
    s = "Hello world"
    expect(length_of_last_word(s)).to eq(5)
  end
end
