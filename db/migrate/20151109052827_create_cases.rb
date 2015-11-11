class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.integer :case_number
      t.integer :mediator_id

      t.timestamps null: false
    end
  end
end
