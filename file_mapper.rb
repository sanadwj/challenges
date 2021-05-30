class Array
  def file_mapper
    each_with_object(Hash.new {|h, k| h[k] = []}) do |file, hash|
      file_ext = File.extname(file)[1..-1]
      hash[file_ext] = hash[file_ext].push(file.chomp!('.' + file_ext))
    end
  end
end

describe 'file mapper' do
  it 'maps each file ext to array of the files that belong to that ext in a hash' do
    file_name = %w(file1.rb file2.html file3.js file4.rb file5.js file6.css)
    expect(file_name.file_mapper).to eq({
      'rb' => ['file1', 'file4'],
      'js' => ['file3', 'file5'],
      'html' => ['file2'],
      'css' => ['file6']
    })
  end
end
