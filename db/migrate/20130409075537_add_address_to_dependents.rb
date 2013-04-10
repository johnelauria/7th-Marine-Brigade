class AddAddressToDependents < ActiveRecord::Migration
  def change
    add_column :dependents, :address, :text
  end
end
