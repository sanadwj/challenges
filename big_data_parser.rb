def big_data_parser(num)
  (1..num).lazy.map do |i|
    i ** 2
  end.first(5)
end

describe "big data parser" do
  it 'it take a large value as input and dont time out' do
    expect(big_data_parser(1_000_000_000_000_000)).to eq([1, 4, 9, 16, 25])
  end
end
