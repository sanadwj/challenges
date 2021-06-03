class Array
  def dose_it_have?(elem)
    each do |i|
      return true if i == elem
    end
    false
  end
end

describe 'Dose it have' do
  it 'check if the array contain an element' do
    arr = [5 ,4, 20, 70]
    expect(arr.dose_it_have?(5)).to eq(true)
    expect(arr.dose_it_have?(25)).to eq(false)
  end
end
