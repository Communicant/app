class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :date
      t.time :time
      t.integer :parent_id
      t.integer :child_id
      t.integer :mediator_id
      t.boolean :pending

      t.timestamps null: false
    end
  end
end
