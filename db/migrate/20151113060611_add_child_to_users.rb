class AddChildToUsers < ActiveRecord::Migration
  def change
    add_column :users, :child_id, :integer
  end
end
