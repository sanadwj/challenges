class ApiConnector
  attr_accessor :attempts, :errors

  def initialize
    @attempts = 0
    @errors = []
  end

  def send_data
    begin
      @attempts +=1
      api_call
    rescue Errno::ETIMEDOUT => e
      @errors << e
      retry if @attempts < 3
    end
  end

  def api_call
    raise Errno::ETIMEDOUT
  end
end

describe 'Api connector' do
  it 'attempts to connect to the api 3 times and stor the errors in array' do
    api = ApiConnector.new
    api.send_data
    expect(api.attempts).to eq(3)
    expect(api.errors.to_s).to eq("[#<Errno::ETIMEDOUT: Connection timed out>, #<Errno::ETIMEDOUT: Connection timed out>, #<Errno::ETIMEDOUT: Connection timed out>]")
  end
end
