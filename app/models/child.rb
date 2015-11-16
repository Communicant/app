class Child < ActiveRecord::Base
  has_many :parents
  has_many :events, through: :event_children

end
