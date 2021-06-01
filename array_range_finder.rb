class Array
  def range_finder
    self.minmax
  end
end

describe 'range finder' do
  it 'find the min and the max number in the array' do
    arr = [1, 2 ,50, 60, 20, 250, 100]
    expect(arr.range_finder).to eq([1, 250])
  end
end
