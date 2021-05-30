class Array
  def file_selector(ext)
    grep(/(.*)\.#{ext}/) {$1}
  end
end

describe 'file selector' do
  it 'finds the file with givin ext' do
    file_name = %w( file1.rb file2.html file3.rb file4.css )
    expect(file_name.file_selector('rb')).to eq(%w(file1 file3))
  end
end
