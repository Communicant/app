class Event < ActiveRecord::Base
  belongs_to :case
  belongs_to :user
  has_many :parents, through: :approvals, class_name: 'User'
  has_one :child
  has_many :approvals
  has_one :mediator, through: :case

  # has_one :child, through: :event_children
  #

  def has_been_approved?
    if self.approval == true
      return true
    else
      false
    end
  end
  # def has_been_approved?
  #   if self.approval == true
  #     return true
  #   elsif self.approval != true
  #     return false
  #   elsif @approved_parents.include?(!@logged_in_user)
  #     return false
  #   else @approved_parents.include?(@logged_in_user) && @approved_parents.include?(!@logged_in_user)
  #     return true
  #   end
  # end


end
