class Array
  def at_least_four_characters?
    all? do |c|
      c.length >= 4
    end
  end
end

describe ' At least four characters' do
  it 'check if the word in the array have more than 4 characters' do
    arr1 = %w{words that have size}
    arr2 = %w{wrds that dont have the size}
    expect(arr1.at_least_four_characters?).to eq(true)
    expect(arr2.at_least_four_characters?).to eq(false)
  end
end
