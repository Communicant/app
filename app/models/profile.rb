class Profile < ActiveRecord::Base
  belongs_to :mediator, class_name: 'Mediator'
  has_many :parents, through: :user_cases, class_name: 'Parent'
  has_many :events
end
