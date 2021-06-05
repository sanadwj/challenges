def fibonacci(num)
  (0..num).inject( [0, 1] ) {|f| f << f.last(2).inject(&:+)}
end

describe 'fibonacci' do
  it 'calculate the fibonacci value' do
    expect(fibonacci(5)).to eq([0, 1, 1, 2, 3, 5, 8, 13])
  end
end
