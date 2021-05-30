location_query = -> (lat, long) do
  "#{lat}, #{long}"
end

time_query = -> do
  Time.now
end

def user_update(name, set_location, ping_at)
  <<~EOL
    Name: #{name}
    Location: #{set_location}
    Time: #{ping_at}
  EOL
end

describe 'user update' do
  it 'shows that methods can be passed multi block whe leveraging lambdas' do
    status = user_update("Sandoog", location_query.call(23, -123), time_query.call)
    expect(status).to eq("Name: Sandoog\nLocation: 23, -123\nTime: #{Time.now}\n")
  end
end
