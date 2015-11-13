class CreateApprovals < ActiveRecord::Migration
  def change
    create_table :approvals do |t|
      t.boolean :parent_approval
      t.integer :event_id
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
