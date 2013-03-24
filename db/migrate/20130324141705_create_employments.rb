class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.integer :personal_detail_id
      t.date :employment_date
      t.date :retirement
      t.string :type_of_employment
      t.string :name
      t.text :address
      t.text :nature_of_leaving

      t.timestamps
    end
  end
end
