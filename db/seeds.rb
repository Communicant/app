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

cost6 = Cost.create!(title: "Child Support Due!", amount: "111.00", due: Date.new(2015, 11, 30), parent_id: 2, paid: false)



event1 = Event.create!(title: "Minecraft Party", date: Date.new(2015, 11, 15), time: (5), description: "Mike's birthday party.",
          parent_id: "1", child_id: "2")
event2 = Event.create!(title: "Softball practice", date: Date.new(2015, 11, 10), time: (6), description: "Jane has softball practice at a new time today.",
          parent_id: "1", child_id: "1")
event3 = Event.create!(title: "Soccer game", date: Date.new(2015, 11, 12), time: (4), description: "Sarah's soccer game.",
          parent_id: "1", child_id: "3")
event4 = Event.create!(title: "Doctor's appointment", date: Date.new(2015, 11, 9), time: (3), description: "Charlie doctor's appointment.",
          parent_id: "1", child_id: "4")
