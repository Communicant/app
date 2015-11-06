class Cost < ActiveRecord::Base

  def self.paid
    self.where(paid:true)
  end
end
