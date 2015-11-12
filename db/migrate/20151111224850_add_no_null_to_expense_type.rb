class AddNoNullToExpenseType < ActiveRecord::Migration
  def change
    change_column_null :expenses, :type, false
  end
end
