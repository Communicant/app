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

  def self.expense_payments
    expense = Expense.find(params[:id])
    expense_payments = Payment.where(expense_id: expense.id)
    expense_payments
  end

  def self.expense_payments_total
    expense = Expense.find(params[:id])
    total_amount = 0
    expense_payments = Payment.where(expense_id: expense.id)
    expense_payments.each do |a|
      total_amount += a.amount
    end
    total_amount
  end
end
