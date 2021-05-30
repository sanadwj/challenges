def html_creator(text, tag)
  tag_text = %W{#{tag} text_placeholder #{tag}}
  tag_text[1] = text
  "<%s>%s</%s>" % tag_text
end

describe 'html creator' do
  it 'should write the text wit the tag' do
    expect(html_creator("hello", "h2")).to eq('<h2>hello</h2>')
  end
end
