def array_rotation(arr, num)
  arr.rotate(num)
end

describe 'Array rotation' do
  it 'rotate the value of the number ' do
    expect(array_rotation([1, 2, 3], 2)).to eq([3, 1, 2])
  end
end
