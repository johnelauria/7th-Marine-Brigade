class CreateCreditReputations < ActiveRecord::Migration
  def change
    create_table :credit_reputations do |t|
      t.integer :personal_detail_id
      t.boolean :salary_defendant
      t.text :other_income
      t.text :name_address_of_banks
      t.boolean :filed_assets_liabilities
      t.string :what_agency
      t.boolean :filed_income_tax_return
      t.string :credit_reference_name1
      t.text :credit_reference_address1
      t.string :credit_reference_name2
      t.string :credit_reference_address2
      t.string :credit_reference_name3
      t.text :credit_reference_address3

      t.timestamps
    end
  end
end
