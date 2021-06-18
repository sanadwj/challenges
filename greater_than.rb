def greater_than(arr, num)
  arr.count {|e| e > num}
end

describe 'greater than' do
  it 'return the numbers in the array that are bigger than the givin number' do
    arr = [100, 20, 50, 30, 70]
    expect(greater_than(arr, 50)).to eq(2)
  end
end 
