def largest_hidden_word(words, word_to_clean)
  words.each_with_object([]) do |word, arr|
    arr << word.split(//).keep_if do |c|
      word_to_clean.include?(c)
    end
  end.sort_by do |e|
    e.count
  end.last.join

end

describe 'Largest hidden word' do
  it 'retern the largest word for the word to clean' do
    word_to_clean = 'abpcblea'
    words = %w{ale apple monkey plea}
    expect(largest_hidden_word(words, word_to_clean)).to eq('apple')
  end
end
