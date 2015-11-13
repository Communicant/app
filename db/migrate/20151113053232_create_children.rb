class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :first_name
      t.integer :age
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
