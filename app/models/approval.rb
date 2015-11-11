class Approval < ActiveRecord::Base
  belongs_to :parent, class_name: 'User'
  belongs_to :event

end
