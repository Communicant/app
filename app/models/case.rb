class Case < ActiveRecord::Base
  belongs_to :user, through: :user_cases

  # has_many :user_cases
  # has_many :users, through: :user_cases
  # has_one :mediator, through: :user_cases, class_name: 'User'
  # has_many :parents, through: :user_cases, class_name: 'User'
  # has_many :children
end
