require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  setup do
    @message = messages(:one)
  end

  test "new message can be saved" do
    a = Message.new(user_id: 1, body: "hello!", date: Date.today, time: Time.now)
    assert a.save
  end

  test "message must contain body" do
    a = Message.new()
    b = Message.new(body: nil)
    assert a.save
    refute b.save
  end
end
