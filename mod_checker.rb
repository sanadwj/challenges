def mod_checker(arr, num1, num2)
  arr.detect do |mod|
    mod % num1 == 0 && mod % num2 == 0
  end
end

describe "mod checker" do
  it "returns the first valye divisable by givin numbers" do
    expect(mod_checker(1..200, 12, 16)).to eq(48)
  end
end
