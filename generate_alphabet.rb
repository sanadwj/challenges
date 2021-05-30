def generate_alphabet
  ("a".."z").to_a
end

describe 'generate alphabet' do
  it 'generate all alphabet' do
    expect(generate_alphabet).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v" , "w", "x", "y", "z"])
  end
end
