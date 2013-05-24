class AddDegreeToEducationalBackgrounds < ActiveRecord::Migration
  def change
    add_column :educational_backgrounds, :degree, :string
  end
end
