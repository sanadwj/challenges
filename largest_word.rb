def largest_word(strings, num)
  strings.max_by(num) { |str| str.length }
end

describe "largest word" do
  it "return the largest words in the array" do
    arr = %w[a group of word in different lengths]
    expect(largest_word(arr, 2)).to eq(["different", "lengths"])
  end
end
