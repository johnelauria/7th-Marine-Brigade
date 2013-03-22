class CreateReceivedMilitaryAwards < ActiveRecord::Migration
  def change
    create_table :received_military_awards do |t|
      t.integer :military_history_id
      t.text :awards

      t.timestamps
    end
  end
end
