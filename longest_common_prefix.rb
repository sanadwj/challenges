def longest_common_prefix(strs)
  return '' if strs.empty?
  min, max = strs.minmax
  idx = min.size.times { |e| break e if min[e] != max[e] }
  min[0...idx]

end

describe "longest_common_prefix" do
  it 'return the common prefix in arrrau of strings' do
    arr1 = ["flower", "flow", "flight"]
    expect(longest_common_prefix(arr1)).to eq("fl")
  end

  it 'return empty string if there is no common prefix' do
    arr2 = ["dog", "cat", "phone"]
    expect(longest_common_prefix(arr2)).to eq("")
  end
end
