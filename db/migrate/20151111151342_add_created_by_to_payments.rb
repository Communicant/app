class AddCreatedByToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :created_by, :integer
    add_column :payments, :paid_by, :integer
    add_column :payments, :expense_id, :integer
  end
end
