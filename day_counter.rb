require 'date'

def day_counter
  Integer(Date.new(2020, 05, 06) - Date.new(2018, 05, 05))
end

describe 'day counter' do
  it 'count the dayes between to dates' do
    expect(day_counter).to eq(732)
  end
end
