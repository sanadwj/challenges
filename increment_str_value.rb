def increment_str_value(str)
  str + str.next.slice(-1)
end

describe 'Increment string value' do
  it 'increment the value of the string' do
    expect(increment_str_value("abcd")).to eq("abcde")
    expect(increment_str_value("123")).to eq("1234")
  end
end
