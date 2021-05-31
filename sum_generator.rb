def sum_generator(num)
  0.upto(num).inject(&:+)
end

describe 'Sum generator' do
  it 'sum all the numbers brom 0 until the given number' do
    expect(sum_generator(10)).to eq(55)
  end
end
