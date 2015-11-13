class RemoveParentIdFromPayments < ActiveRecord::Migration
  def change
    remove_column :payments, :parent_id
  end
end
