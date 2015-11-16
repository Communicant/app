class AddLimitToPhoneNumberInProfile < ActiveRecord::Migration
  def change
    change_column :profiles, :phone_number, :integer, :limit => 10
  end
end
