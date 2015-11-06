class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :title
      t.datetime :due_date
      t.decimal :amount
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
