class CreateForeignCountryVisiteds < ActiveRecord::Migration
  def change
    create_table :foreign_country_visiteds do |t|
      t.integer :personal_detail_id
      t.date :start_date
      t.date :end_date
      t.string :country_visited
      t.string :purpose_of_visit

      t.timestamps
    end
  end
end
