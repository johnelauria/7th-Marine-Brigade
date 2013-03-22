class CreateBrothersAndSisters < ActiveRecord::Migration
  def change
    create_table :brothers_and_sisters do |t|
      t.integer :family_history_id
      t.string :name
      t.integer :age
      t.text :address
      t.string :occupation

      t.timestamps
    end
  end
end
