def binary_gab(n)
  binary = n.to_s(2)

  temp = []

  zero_collection = []

  binary.each_char do |c|
    if c == "1"
      unless temp.empty?
        zero_collection << temp.length
        temp = []
      end
    else
      temp << c
    end
  end

  if zero_collection.empty?
    return 0
  else
    return zero_collection.max
  end
end


describe 'Binary gab' do
  it 'return the longest gab of zeros in a binary number' do
    expect(binary_gab(1041)).to eq(5)
  end
end
