class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.text :body
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
