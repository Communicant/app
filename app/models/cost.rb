class Cost < ActiveRecord::Base

  def self.paid
    self.where(paid:true)
  end

  def self.not_paid
    self.where(paid:false)
  end

  def self.total_amount
  all_costs = self.where(paid:false)
  total_amount = 0
  all_costs.each do |a|
    total_amount += a.amount
    end
  total_amount
  end
end
