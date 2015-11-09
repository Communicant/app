class Case < ActiveRecord::Base
  has_many :user_cases
  has_many :users, through: :user_cases
  has_one :mediator, through: :user_cases, conditions: ["relationship = ?", "mediator"]
  has_many :parents, through: :user_cases, conditions: ["relationship = ?", "parent"]
  has_many :children
end
