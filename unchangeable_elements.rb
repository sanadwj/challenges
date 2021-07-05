elements = [1, 2, 3]

elements.freeze

describe "Unchangeable elements" do
  it ' dosnt allow array to be altered' do
    expect{elements << 4}.to raise_error(RuntimeError)
  end
end
