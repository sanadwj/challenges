require 'date'

class Chat
  def initialize(user_1, user_2)
    @user_1 = user_1
    @user_2 = user_2
    @message_list = []
  end

  def new_message(msg,sender)
    @message_list.push(
      {
        sender: sender,
        message: msg,
        timestamp: Date.today
      }
    ).last
  end

  def messages
    @message_list
  end
end

describe 'Chat' do
  before do
    @user_one = "Jordan"
    @user_two = "Sam"
    @chat = Chat.new(@user_one, @user_two)
  end

  it 'send messages between users' do
    @chat.new_message('Hello', @user_one)
    expect(@chat.new_message('Hi', @user_two)).to eq({
      sender: 'Sam',
      message: 'Hi',
      timestamp: Date.today
    })
  end

  it 'can provide a history of messages between users' do
    @chat.new_message('Hello', @user_one)
    @chat.new_message('Hi', @user_two)
    expect(@chat.messages).to eq(
      [
        {
          sender: "Jordan",
          message: 'Hello',
          timestamp: Date.today
        },
        {
          sender: 'Sam',
          message: 'Hi',
          timestamp: Date.today
        }
      ]
    )
  end




end
