def is_palindrome(x)
  if x >= 0 && x == x.to_s.reverse.to_i
    true
  else
    false
  end
end

describe "Palindrome number" do
  it 'return true if the number is palindrome' do
    expect(is_palindrome(121)).to eq(true)
  end
  it 'return false if the number not a palindrome' do
    expect(is_palindrome(123)).to eq(false)
  end
  it 'return false if the number is less than 0' do
    expect(is_palindrome(-454)).to eq(false)
  end
end
