class ChangeMaritalHistoriesFromMaritalHistory < ActiveRecord::Migration
  def up
    remove_column :children, :marital_histories_id
    add_column :children, :marital_history_id, :integer
  end

  def down
    remove_column :children, :marital_history_id
    add_column :children, :marital_histories_id, :integer
  end
end
