class AddPersonalDetailIdToPersonalCharacteristics < ActiveRecord::Migration
  def change
    add_column :personal_characteristics, :personal_detail_id, :integer
    add_column :marital_histories, :personal_detail_id, :integer
    add_column :family_histories, :personal_detail_id, :integer
    add_column :place_of_residences, :personal_detail_id, :integer
    add_column :educational_backgrounds, :personal_detail_id, :integer
    add_column :military_histories, :personal_detail_id, :integer
  end
end
