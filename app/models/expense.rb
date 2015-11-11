class Expense < ActiveRecord::Base
  has_many :payments


  def payments_total
    payments.sum(:amount).to_f
  end

  def amount_still_owed
    (self.amount - payments_total).to_f
  end

end

class Medical < Expense; end

class School < Expense; end

class Personal < Expense; end

class Other < Expense; end
