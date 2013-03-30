class AddTypeToAadts < ActiveRecord::Migration
  def change
    add_column :aadts, :type_of_aadt, :string
  end
end
