class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.text :address
      t.integer :phone_number
      t.string :child_name
      t.integer :case_number
      t.string :mediator_name

      t.timestamps null: false
    end
  end
end
