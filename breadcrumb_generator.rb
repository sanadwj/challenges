def breadcrumb_generator(string)
  string.join('/')
end

describe 'breadcrumb generator' do
  it 'generate a breadcrumb from array of strings' do
    arr = ['s1', 's2', 's3']
    expect(breadcrumb_generator(arr)).to eq('s1/s2/s3')
  end
end
