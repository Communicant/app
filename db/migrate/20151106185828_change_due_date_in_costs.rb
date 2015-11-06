class ChangeDueDateInCosts < ActiveRecord::Migration
  def change
    remove_column :costs, :due_date
  end
end
