require 'prime'

def prime_sum(num)
  Prime.each(num).inject(&:+)
end

describe 'prime sum' do
  it 'sum all the prime numbers in the num' do
    expect(prime_sum(22)).to eq(77)
  end
end
