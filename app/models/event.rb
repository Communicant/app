class Event < ActiveRecord::Base
  belongs_to :case
  has_many :parents, through: :approvals, class_name: 'User'
  has_many :approvals
  has_one :mediator, through: :case
  has_many :children, through: :parents
end
