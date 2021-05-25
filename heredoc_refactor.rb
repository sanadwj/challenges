def heredoc_refactor
  <<~EOL
    some
    word
    in
    heredoc
   EOL
end

heredoc_refactor

describe 'herdoc refactor' do
  it 'dose not have a leading space on each line' do
    expect(heredoc_refactor).to eq("some\nword\nin\nheredoc\n")
  end
end
