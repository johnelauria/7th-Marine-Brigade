class CreateMiscellaneous < ActiveRecord::Migration
  def change
    create_table :miscellaneous do |t|
      t.integer :personal_detail_id
      t.text :hobbies
      t.boolean :lie_detection_test

      t.timestamps
    end
  end
end
