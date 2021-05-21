def lockpick(values, combinations: nil)
  return values.permutation(3).to_a if combinations

  values.permutation(3).size
end


describe 'lockpick' do
  it ' return the number of combinations for the lock' do
    values = [ 3, 4, 5 ]
    expect(lockpick(values)).to eq(6)
  end
end
