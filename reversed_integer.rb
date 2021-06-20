def reversed_integer(x)
  x = x < 0 ? -x.to_s.revers.to_i : x.to_s.reverse.to_i
  if (x > 2147483647) || (x < -2147483648)
    x = 0
  end
  return x
end

describe 'reversed integer' do
  it 'return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0' do
    expect(reversed_integer(123)).to eq(321)
  end
end
