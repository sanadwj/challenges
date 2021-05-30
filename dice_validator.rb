def valid_dice?(d1, d2)
  [d1, d2].all_between?(1, 6) ? true : false
end

class Array
  def all_between?(low, high)
    each do |i|
      return false unless i.between?(low, high)
    end
  end
end

describe 'dice validator' do
  it 'is valid if the dice is in between the valid values' do
    expect(valid_dice?(5, 4)).to eq(true)
    expect(valid_dice?(1, 3)).to eq(true)
  end

  it 'is not valid if the dice values not in bettween valid values' do
    expect(valid_dice?(7, 4)).to eq(false)
    expect(valid_dice?(9, 2)).to eq(false)
  end
end
