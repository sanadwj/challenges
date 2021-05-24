def hash_query(hash, key)
  hash.fetch(key)
end

describe 'hash_query' do
  before do
    @hash = { name: 'Sanad', email: 'sanad@example.com' }
  end

  it 'properly fetch the key value' do
    expect(hash_query(@hash, :name)).to eq('Sanad')
  end
end
