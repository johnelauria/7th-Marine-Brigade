class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :marital_histories_id
      t.string :name
      t.date :birth_date
      t.text :address

      t.timestamps
    end
  end
end
