def title_builder(headers, data)
  hash = Hash.new

  headers.each_with_index do |h, d|
    hash[h] = data[d]
  end

  hash
end

describe 'Title builder' do
  it 'create a hash the map headers as a key and data as value' do
    arr1 = ["title", "desc", "rate"]
    arr2 = ['sandoog', "private", 5]
    expect(title_builder(arr1, arr2)).to eq({
      "title" => "sandoog",
      "desc" => "private",
      "rate" => 5
    })
  end
end
