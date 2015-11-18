class AddCaseNumberToChildren < ActiveRecord::Migration
  def change
    add_column :children, :case_number, :integer
  end
end
