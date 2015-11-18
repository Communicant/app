# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# # Costs --------------
#
# cost1 = Cost.create!(title: "School Pictures Outfit", amount: "60.00", due: Date.new(2015, 12, 17), parent_id: 1, paid: false)
#
# cost2 = Cost.create!(title: "Sarah's Asthma Prescription", amount: "45.00", due: Date.new(2015, 12, 28), parent_id: 1, paid: false)
#
# cost3 = Cost.create!(title: "Billy's TaeKwonDo Dobok", amount: "26.00", due: Date.new(2016, 01, 17), parent_id: 2, paid: false)
#
# cost4 = Cost.create!(title: "Sarah Needs A new Softball Bat", amount: "28.49", due: Date.new(2015, 11, 28), parent_id: 2, paid: false)
#
# cost5 = Cost.create!(title: "Kids Insurance Payment", amount: "165.00", due: Date.new(2015, 12, 07), parent_id: 1, paid: false)
#
# cost6 = Cost.create!(title: "Child Support Due!", amount: "111.00", due: Date.new(2015, 11, 30), parent_id: 2, paid: true)

#Events ------------------
10.times do |e|
e = Event.create(
  :title   => ["Birthday party", "Doctor's appointment", "Dentist's appointment", "After School music class",
      "After School sport practice", "After school other activity", "Play date"].sample,
  :date    => Faker::Date.between(2.days.ago, Time.now),
  :time    => Faker::Time.between(2.days.ago, Time.now, :day),
  :location => Faker::Address.street_address,
  :parent_id => rand(1..2),
  :child_id => rand(1..6),
  :mediator_id => 1
)
end
# event1 = Event.create!(title: "Minecraft Party", date: Date.new(2015, 11, 15), time: Time.new(2015, 11, 15, 14, 0, 0), description: "Mike's birthday party." location: (event.location),
#           parent_id: 1, child_id: 1)
# event2 = Event.create!(title: "Softball practice", date: Date.new(2015, 11, 10), time: Time.new(2015, 11, 10, 16, 0, 0), description: "Jane has softball practice at a new time today.", location: (event.location), parent_id: 1, child_id: 2)
# event3 = Event.create!(title: "Soccer game", date: Date.new(2015, 11, 12), time: Time.new(2015, 11, 12, 15, 0, 0), description: "Sarah's soccer game.", location: (event.location), parent_id: 1, child_id: 1)
# event4 = Event.create!(title: "Doctor's appointment", date: Date.new(2015, 11, 9), time: Time.new(2015, 11, 9, 17, 0, 0), description: "Charlie doctor's appointment.", location: (event.location), parent_id:  2, child_id: 2)

# Expenses -------------------------

expense1 = Expense.create!(type: "School", amount: 450.00, due_at: Time.now + 5.days)

expense2 = Expense.create!(type: "Medical", amount: 110.00, due_at: Time.now + 4.days)

# Expenses -------------------------

expense1 = Expense.create!(type: "School", amount: 450.00, due_at: Time.now + 5.days)

expense2 = Expense.create!(type: "Medical", amount: 110.00, due_at: Time.now + 4.days)


#Payments ----------------

payment1 = Payment.create!(amount: "60.00", paid_at: Date.new(2015, 11, 8), paid_by: 2, expense_id: 1)

payment2 = Payment.create!(amount: "40.00", paid_at: Date.new(2015, 10, 29), paid_by: 1, expense_id: 2)

payment3 = Payment.create!(amount: "30.00", paid_at: Date.new(2015, 10, 30), paid_by: 2, expense_id: 1)

payment4 = Payment.create!(amount: "25.00", paid_at: Date.new(2015, 11, 1), paid_by: 2, expense_id: 2)

payment5 = Payment.create!(amount: "35.00", paid_at: Date.new(2015, 11, 6), paid_by: 1, expense_id: 1)

# Messages

message1 = Message.create!(user_id: 1, body: "Billy thinks he left his toy car at your house. It's his favorite car. Can you look for it, and if you find it, let me know?", date: Date.new(2015, 11, 6), time: Time.new(2015, 11, 6, 11, 32, 56))

message2 = Message.create!(user_id: 2, body: "Yeah, I found it. He dropped it outside on his way to the car. I put it on my nightstand. I'll make sure to give it to him.", date: Date.new(2015, 11, 6), time: Time.new(2015, 11, 6, 11, 45, 41))

message3 = Message.create!(user_id: 1, body: "Thanks. Billy would be heartbroken if he couldn't find that.", date: Date.new(2015, 11, 06), time: Time.new(2015, 11, 6, 12, 01, 56))

message4 = Message.create!(user_id: 1, body: "I get off of work at 7. I'll bring the kids once I get off.", date: Date.new(2015, 11, 9), time: Time.new(2015, 11, 9, 16, 32, 56))

message5 = Message.create!(user_id: 2, body: "Okay. I'll be waiting.", date: Date.new(2015, 11, 9), time: Time.new(2015, 11, 9, 17, 32, 56))


# User ---------------------
10.times do |parent|
parent = Parent.create!(
  :email => Faker::Internet.safe_email,
  :password => "123456",
  :first_name => Faker::Name.name,
  :last_name => Faker::Name.name,
  :address => Faker::Address.street_address,
  :child_id => rand(1..6)
)
end

10.times do |mediator|
mediator = Mediator.create!(
  :email => Faker::Internet.safe_email,
  :password => "123456",
  :first_name => Faker::Name.name,
  :last_name => Faker::Name.name,
  :address => Faker::Address.street_address,
  :child_id => rand(1..6)
)
end
Parent.create!(email: "email1@email.com", password: "123456", first_name: "Mom", last_name: "Parent Last Name", address: "123 123rd st.", child_id: 1)
Parent.create!(email: "email2@email.com", password: "123456", first_name: "Dad", last_name: "Parent Last Name", address: "123 123rd st.", child_id: 2)
Parent.create!(email: "email4@email.com", password: "123456", first_name: "Dad", last_name: "Parent Last Name", address: "123 123rd st.", child_id: 3)
Parent.create!(email: "email5@email.com", password: "123456", first_name: "Dad", last_name: "Parent Last Name", address: "123 123rd st.", child_id: 4)
Parent.create!(email: "email6@email.com", password: "123456", first_name: "Dad", last_name: "Parent Last Name", address: "123 123rd st.", child_id: 5)

Mediator.create!(email: "email3@email.com", password: "123456", first_name: "Mediator", last_name: "Medlast", address: "123 123rd st.")

#Children -------------------
Child.create!(first_name: "Mike", age: 10, parent_id: 1, case_number: 3)
Child.create!(first_name: "Sarah", age: 7, parent_id: 1, case_number: 1)
Child.create!(first_name: "Jan", age: 9, parent_id: 1, case_number: 2)
Child.create!(first_name: "Harry", age: 13, parent_id: 1, case_number: 1)
Child.create!(first_name: "Calliope", age: 2, parent_id: 1, case_number: 2)
Child.create!(first_name: "Annalise", age: 16, parent_id: 1, case_number: 3)

#Approval -----------------------

Approval.create!(parent_id: 1, event_id: 1, parent_approval: true)
Approval.create!(parent_id: 1, event_id: 2, parent_approval: true)
Approval.create!(parent_id: 1, event_id: 3, parent_approval: true)
Approval.create!(parent_id: 2, event_id: 4, parent_approval: true)
