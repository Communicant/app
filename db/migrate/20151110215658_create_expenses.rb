class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :type
      t.datetime :due_at
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
