def is_prime(num)
  (2..(num - 1)).each do |n|
    return false if num % n == 0
  end
  true
end

describe 'is prime' do
  it 'return tru is the number is a prime number' do
    expect(is_prime(7)).to eq(true)
  end
end
