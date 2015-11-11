class AddCreatedByToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :created_by, :id
    add_column :payments, :paid_by, :id
    add_column :payments, :expense_id, :id
  end
end
