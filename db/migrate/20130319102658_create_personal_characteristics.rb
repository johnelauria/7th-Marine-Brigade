class CreatePersonalCharacteristics < ActiveRecord::Migration
  def change
    create_table :personal_characteristics do |t|
      t.string :sex
      t.integer :age
      t.string :height
      t.string :weight
      t.string :build
      t.string :color_of_eyes
      t.string :color_of_hair
      t.string :scars_or_marks
      t.string :state_of_health
      t.string :physical_or_mental_defect
      t.string :recent_serious_illness

      t.timestamps
    end
  end
end
