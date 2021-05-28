class Array
  def remove_anomalies(low, high)
    reject { |e| e < low }.reject { |e| e > high }
  end
end

describe 'Remove Anomalies' do
  it 'Removes all values above and below specified values' do
    values = [88, 35, 500, 6005, 8456]
    expect(values.remove_anomalies(100, 7000)).to eq([500, 6005])
  end  
end
