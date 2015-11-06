class Cost < ActiveRecord::Base

  def self.paid
    self.where(paid:true)
  end

  def self.not_paid
    self.where(paid:false)
  end
end
