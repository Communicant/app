class Expense < ActiveRecord::Base; end

class Medical < Expense; end

class School < Expense; end

class Personal < Expense; end

class Other < Expense; end
