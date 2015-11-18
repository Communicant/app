class AddName2ToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :name2, :text
    add_column :profiles, :email2, :text
    add_column :profiles, :phone2, :text
  end
end
