class AddDefaultValueToShowAttribute < ActiveRecord::Migration
  def change
    change_column :events, :approval, :approval_id
  end
end
