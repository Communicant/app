class Case < ActiveRecord::Base
  has_many :user_cases
  has_many :users, through: :user_cases
  has_one :mediator, through: :user_cases, class_name: 'User'
  has_many :parents, through: :user_cases, class_name: 'User'
  has_many :children
end
