def two_sum(nums, target)
  h = {}
  nums.each_with_index do |a, i|
    n = target - a
    return [h[n], i] if h[n]
    h[a] = i
  end
end

describe 'two sum' do
  it 'return indices of the two number such that they add up to target' do
    arr = [2, 7, 11, 15]
    expect(two_sum(arr, 9)).to eq([0, 1])
  end
end
