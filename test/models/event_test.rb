require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "event has been approved" do
    u1 = User.create!(first_name: "Jasmine")
    u2 = User.create!(first_name: "Anthony")

    e = Event.create!(user: u1)
    a = Approval.create!(event: e, user: u2, approval: true)

    assert e.approved?

    e2 = Event.create!(user: u1)

    refute e2.approved?
  end

end
