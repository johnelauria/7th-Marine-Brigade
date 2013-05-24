class AddFunctionToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :function, :text
    add_column :organizations, :position_held, :string
  end
end
