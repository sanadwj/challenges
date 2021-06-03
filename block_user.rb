class User
  attr_accessor :name, :email

  def initialize
    yield(self) if block_given?
  end
end

describe 'User block' do
  it 'allow user to be created with a block of values' do
    user = User.new do |u|
      u.name = "Sandoog"
      u.email = "email@example.com"
    end

    expect(user.name).to eq("Sandoog")
    expect(user.email).to eq("email@example.com")
  end

  it 'allow you to create user without a default values' do
    user = User.new
    user.name = "Sandoog"
    user.email = "email@example.com"

    expect(user.name).to eq("Sandoog")
    expect(user.email).to eq("email@example.com")
  end
end
