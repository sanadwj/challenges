class Array
  def average
    inject(&:+) / size
  end
end

describe ' Array average' do
  it 'calcolate the average vlue from the array' do
    arr = [110, 50 ,50]
    expect(arr.average).to eq(70)
  end
end
