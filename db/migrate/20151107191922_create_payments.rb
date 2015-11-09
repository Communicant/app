class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :title
      t.decimal :amount
      t.integer :parent_id
      t.datetime :created_at
      t.datetime :updated_at
      t.date :paid_at
      t.integer :cost_id

      t.timestamps null: false
    end
  end
end
