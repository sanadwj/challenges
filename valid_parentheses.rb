def is_valid(s)
  return true if s.empty?

  stack = []

  s.each_char do |c|
    case c
    when '(', '[', '{'
      stack.push(c)
    when ')'
      return false if stack.pop() != '('
    when ']'
      return false if stack.pop() != '['
    when '}'
      return false if stack.pop() != '{'
    end
  end
  return stack.empty?
end

describe 'Valid parentheses' do
  it 'return true if the each parentheses oposit closing' do
    s1 = '()[]{}'
    expect(is_valid(s1)).to eq(true)
  end

  it 'return false if not' do
    s2 = '}[(])'
    expect(is_valid(s2)).to eq(false)
  end
end
