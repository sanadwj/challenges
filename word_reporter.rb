class String
  def total_words
    scan(/\w+/).count
  end

  def word_list
    list = Hash.new(0)
    downcase.scan(/\w+/) { |word| list[word] += 1 }
    list
  end
end


describe 'word reporter' do
  before do
    @str = " - hello man, how are you? are you good?"
  end

  it 'count the total words in the string' do
    expect(@str.total_words).to eq(8)
  end

  it 'it return a hash of total word usage' do
    expect(@str.word_list).to eq({
      "hello" => 1,
      "man" => 1,
      "how" => 1,
      "are" => 2,
      "you" => 2,
      "good" => 1
    })
  end
end
