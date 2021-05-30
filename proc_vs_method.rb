value = 0

a_proc = -> { value += 1 }

def a_method
  val += 1
end

describe "the diferenc" do
  it 'can access a verbial from outside its scope and process it' do
    a_proc.call
    a_proc.call
    expect(a_proc.call).to eq(3)
  end

  it 'can not process a verbial from outside the scoop and rais error' do
    expect {a_method}.to raise_error(NoMethodError)
  end
end
