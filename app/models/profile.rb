class Profile < ActiveRecord::Base
  belongs_to :mediator, class_name: 'Mediator'
  has_many :parents, through: :user_cases, class_name: 'Parent'
  has_many :events


  def profile_children
    children = Child.where(case_number: self.case_number)
    children.map do |children|
      children.first_name
    end
  end



end
