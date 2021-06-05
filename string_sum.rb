def string_sum(nums)
  nums.map(&:to_i).inject(&:+)
end

describe 'string sum' do
  it 'sum array of strings' do
    expect(string_sum(('1'..'20'))).to eq(210)
  end
end
