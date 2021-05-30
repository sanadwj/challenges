def string_infinity_generator(num)
  arr = []

  (1..Float::INFINITY).each do |i|
    arr << i.to_s
    break if i == num
  end
  arr
end

describe 'string_infinity_generator' do
  it 'generate a string numbers from 1 until the value of the argument' do
    expect(string_infinity_generator(3)).to eq(["1", "2", "3"])
  end
end
