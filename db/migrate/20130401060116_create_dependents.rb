class CreateDependents < ActiveRecord::Migration
  def change
    create_table :dependents do |t|
      t.integer :rid_id
      t.string :name
      t.string :relation
      t.date :date_of_birth

      t.timestamps
    end
  end
end
