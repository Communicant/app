class RenameCostsToExpenses < ActiveRecord::Migration
  def change
    rename_table :costs, :expenses
  end
end
