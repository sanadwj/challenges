def sentence_reverser(str)
  str.split.reverse.join(' ')
end

describe 'sentence reverser' do
  it 'reverse a sentence' do
    sentence = 'backword am I'
    expect(sentence_reverser(sentence)).to eq('I am backword')
  end
end
