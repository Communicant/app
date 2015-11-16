class CreateEventChildren < ActiveRecord::Migration
  def change
    create_table :event_children do |t|
      t.integer :event_id
      t.integer :child_id

      t.timestamps null: false
    end
  end
end
