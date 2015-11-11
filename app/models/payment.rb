class Payment < ActiveRecord::Base
  belongs_to :expense
  belongs_to :user

  def self.total_amount
    self.sum(:amount).to_f
  end



end
