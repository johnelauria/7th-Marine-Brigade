class AddPositionToEmployments < ActiveRecord::Migration
  def change
    add_column :employments, :position, :string
  end
end
