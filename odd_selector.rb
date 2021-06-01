class Array
  def odd_selector
    select(&:odd?)
  end
end

describe 'odd selector' do
  it 'select the odd number in a range of numbers' do
    expect(Array(1..10).odd_selector).to eq([1, 3, 5, 7, 9])
  end
end
