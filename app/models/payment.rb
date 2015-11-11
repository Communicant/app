class Payment < ActiveRecord::Base
  belongs_to :expenses
  belongs_to :user

  def self.total_amount
    self.sum(:amount).to_f
  end



end
