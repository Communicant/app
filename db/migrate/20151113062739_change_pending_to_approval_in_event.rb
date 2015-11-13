class ChangePendingToApprovalInEvent < ActiveRecord::Migration
  def change
    rename_column :events, :pending, :approval 
  end
end
