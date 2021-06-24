def remove_element(nums, val)
  return 0 if nums.length == 0
  nums.each_with_index do |num, i|
    if num == val
      nums[i] = nil
    end
  end
  nums.compact!
end

describe 'remove element' do
  it 'remov the value from the array of numbers' do
    arr = [1, 2, 3, 4, 5]
    expect(remove_element(arr, 4)).to eq([1, 2, 3, 5])
  end
end
