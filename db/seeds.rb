# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Costs --------------

cost1 = Cost.create!(title: "School Pictures Outfit", amount: "60.00", due: Date.new(2015, 12, 17), parent_id: 1, paid: false)

cost2 = Cost.create!(title: "Sarah's Asthma Prescription", amount: "45.00", due: Date.new(2015, 12, 28), parent_id: 1, paid: false)

cost3 = Cost.create!(title: "Billy's TaeKwonDo Dobok", amount: "26.00", due: Date.new(2016, 01, 17), parent_id: 2, paid: false)

cost4 = Cost.create!(title: "Sarah Needs A new Softball Bat", amount: "28.49", due: Date.new(2015, 11, 28), parent_id: 2, paid: false)

cost5 = Cost.create!(title: "Kids Insurance Payment", amount: "165.00", due: Date.new(2015, 12, 07), parent_id: 1, paid: false)

cost6 = Cost.create!(title: "Child Support Due!", amount: "111.00", due: Date.new(2015, 11, 30), parent_id: 2, paid: true)

#Events ------------------
event1 = Event.create!(title: "Minecraft Party", date: Date.new(2015, 11, 15), time: Time.new (2015, 11, 15, 14, 0, 0), description: "Mike's birthday party.",
          parent_id: "1", child_id: "2")
event2 = Event.create!(title: "Softball practice", date: Date.new(2015, 11, 10), time: Time.new (2015, 11, 10, 16, 0, 0), description: "Jane has softball practice at a new time today.", parent_id: "1", child_id: "1")
event3 = Event.create!(title: "Soccer game", date: Date.new(2015, 11, 12), time: Time.new (2015, 11, 12, 15, 0, 0), description: "Sarah's soccer game.", parent_id: "1", child_id: "3")
event4 = Event.create!(title: "Doctor's appointment", date: Date.new(2015, 11, 9), time: Time.new (2015, 11, 9, 17, 0, 0), description: "Charlie doctor's appointment.",   parent_id: "1", child_id: "4")


#Payments ----------------

payment1 = Payment.create!(title: "Sarah's Doctor's Appoitnment", amount: "60.00", paid_at: Date.new(2015, 12, 17), parent_id: 2)

payment2 = Payment.create!(title: "Child Support Due!", amount: "111.00", paid_at: Date.new(2015, 11, 07), parent_id: 1, cost_id: 6)

payment3 = Payment.create!(title: "Sneakers for Billy", amount: "28.00", paid_at: Date.new(2015, 10, 17), parent_id: 2)

payment4 = Payment.create!(title: "Sarah's Birthday Party!", amount: "105.00", paid_at: Date.new(2015, 11, 01), parent_id: 2, cost_id: 1)

payment5 = Payment.create!(title: "Kids Insurance Payment", amount: "100.00", paid_at: Date.new(2015, 11, 05), parent_id: 1, cost_id: 5)
