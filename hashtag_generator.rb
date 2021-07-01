class String
  def hashtag_generator
    split.map do |e|
      "##{e}"
    end.join(' ')
  end
end

describe 'Hashtag generator' do
  it 'takes a string of words and convert each word to a hashtag' do
    arr = 'hello hi bye my friend'
    expect(arr.hashtag_generator).to eq('#hello #hi #bye #my #friend')
  end
end
