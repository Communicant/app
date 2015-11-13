class RemoveTitleFromPayments < ActiveRecord::Migration
  def change
    remove_column :payments, :title
    remove_column :payments, :cost_id
  end
end
