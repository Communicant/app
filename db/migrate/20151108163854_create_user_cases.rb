class CreateUserCases < ActiveRecord::Migration
  def change
    create_table :user_cases do |t|
      t.integer :case_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
