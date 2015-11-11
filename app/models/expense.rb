class Expense < ActiveRecord::Base; has_many :payments; end

class Medical < Expense; end

class School < Expense; end

class Personal < Expense; end

class Other < Expense; end
