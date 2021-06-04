def find_element(collection, element)
  collection.rassoc(element)
end

describe 'find element' do
  it 'find element in nested arrays' do
    players = [
      [27, 'Sandoog'],
      [28, 'sanad'],
      [29, 'soos']
    ]

    expect(find_element(players, 'Sandoog')).to eq([27, 'Sandoog'])
  end
end
