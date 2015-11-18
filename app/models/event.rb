# require 'will_paginate/array'


class Event < ActiveRecord::Base
  belongs_to :case
  belongs_to :user
  has_many :parents, class_name: 'User'
  has_one :child
  has_one :approval
  has_one :mediator, through: :case

  # has_one :child, through: :event_children
  #

  def has_been_approved?
    if self.approval.blank? == false
      if self.approval.parent_approval == true
        return true
      else
        false
      end
    else
      false
    end
  end

  def will_paginate
    Event.order('created_at DESC').page(params[:page]).per_page(10)
  end
end
