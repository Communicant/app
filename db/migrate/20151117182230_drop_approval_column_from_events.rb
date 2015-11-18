class DropApprovalColumnFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :approval
  end
end
