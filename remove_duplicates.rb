class Array
  def remove_duplicates
    self.each_with_object([]) do |i, arr|
      arr << i unless arr.include?(i)
    end
  end
end

describe 'remove duplicates' do
  it 'removes duplicates from the array' do
    arr = [1, 2, 2, 3, 4, 4, 5]
    expect(arr.remove_duplicates).to eq([1 ,2 ,3 , 4, 5])
  end
end
