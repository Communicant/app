require 'test_helper'

class MessageTest < ActiveSupport::TestCase


  test "new message can be saved" do
    a = Message.new(user_id: 1, body: "hello!", date: Date.today, time: Time.now)
    assert a.save
  end

  test "message must contain body" do
    a = Message.new(user_id: 1, body: "hello!", date: Date.today, time: Time.now)
    b = Message.new(user_id: 1, date: Date.today, time: Time.now)
    assert a.save
    assert_raises ActiveRecord::StatementInvalid do
      b.save
    end
  end

end
