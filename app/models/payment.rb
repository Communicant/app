class Payment < ActiveRecord::Base
  belongs_to :expenses
  belongs_to :user

  def self.total_amount
  all_payments = self.all
  total_amount = 0
  all_payments.each do |a|
    total_amount += a.amount
    end
  total_amount
  end


  def self.expense_payments_total(expense_id)
    total_amount = 0
    expense_payments = Payment.where(expense_id: expense_id)
    expense_payments.each do |a|
      total_amount += a.amount
    end
    total_amount
  end

  def self.expense_difference(expense_id)
    total_amount = 0
    expense_payments = Payment.where(expense_id: expense_id)
    expense_payments.each do |a|
      total_amount += a.amount
    end
    expense_difference = expense.amount - total_amount
  end
end
