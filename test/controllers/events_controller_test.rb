require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  def test_has_been_approved?
    test_e = Event.create!(title: "Event Test", description: "Testing the event stuff", date: Date.new(2015, 11, 16),
            parent_id: 99, child_id: 98, mediator_id: 3, approval: true)
    parent1 = Parent.create!(id: 99, email: "mom@mom.com", password: "mommom", first_name: "MomMom", last_name: "MomLast", address: "1234 Lake Dr", child_id: 98)
    parent2 = Parent.create!(id: 97, email: "dad@dad.com", password: "daddad", first_name: "DadDad", last_name: "DadLast", address: "1237 Lake Dr", child_id: 98)
    child1 = Child.create!(first_name: "KidKid", age: 7, parent_id: 99)

    assert test_e.has_been_approved?

    test_no = Event.create!(title: "Event Test", description: "Testing the event stuff", date: Date.new(2015, 11, 16),
            parent_id: 99, child_id: 98, mediator_id: 3, approval: false)

    refute test_no.has_been_approved?
  end

  def test_has_second_approval

    false_parent_approval = Event.create!(title: "Event Test", description: "Testing the event stuff", date: Date.new(2015, 11, 16),
            parent_id: 99, child_id: 98, mediator_id: 3, approval: false)

  end
end
