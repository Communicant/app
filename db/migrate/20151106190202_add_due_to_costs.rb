class AddDueToCosts < ActiveRecord::Migration
  def change
    add_column :costs, :due, :date
  end
end
