class CreatePromotionDemotions < ActiveRecord::Migration
  def change
    create_table :promotion_demotions do |t|
      t.integer :rid_id
      t.string :from
      t.string :to
      t.string :rank
      t.string :authority
      t.date :effectivity

      t.timestamps
    end
  end
end
