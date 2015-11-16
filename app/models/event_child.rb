class EventChild < ActiveRecord::Base
  belongs_to :event
  belongs_to :child
end
