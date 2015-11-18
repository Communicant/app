class ChangePhoneNumberInProfilesToText < ActiveRecord::Migration
  def change
    change_column :profiles, :phone_number, :text
  end
end
