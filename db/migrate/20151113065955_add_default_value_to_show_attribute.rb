class AddDefaultValueToShowAttribute < ActiveRecord::Migration
  def change
    rename_column :events, :approval, :approval_id
  end
end
