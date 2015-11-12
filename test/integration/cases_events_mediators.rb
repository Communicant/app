require 'test_helper'
class CasesEventsMediatorsTest < ActionController::TestCase


  Case.delete_all
  Event.delete_all


  test "events should have a mediator" do
    assert_not_nil Mediator.first
    assert_nil Case.first
    Case.create! case_number: 1234, mediator: Mediator.first
    Event.create! case: Case.first
    event = Event.first

    assert_not_nil event.mediator

  end

  test "events should have parents through cases" do
    assert_not_nil Parent.first
    assert_not_nil Parent.last
    assert_nil Case.first

    chicken = Case.create! case_number: 12345

    chicken.parents << Parent.first
    chicken.parents << Parent.last
    chicken.save

    assert Case.first.parents.count == 2

    Case.first.events.create title: "Something"

    assert Event.first.parents == 2
    assert Event.first.parents == Case.first.parents
  end
end
