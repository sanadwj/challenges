class Array
  def index_hash
    self.each_with_object({}) do |item, hash|
      hash[self.index(item)] = item
    end
  end
end

describe 'index hash' do
  it 'converts array to hash and give an index for each item in the array' do
    arr = %w(the quick brown fox)
    expect(arr.index_hash).to eq({0 => "the", 1 => "quick", 2 => "brown", 3 => "fox"})
  end
end
