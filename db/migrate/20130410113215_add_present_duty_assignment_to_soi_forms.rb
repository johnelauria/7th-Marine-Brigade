class AddPresentDutyAssignmentToSoiForms < ActiveRecord::Migration
  def change
    add_column :soi_forms, :present_duty_assignment, :date
  end
end
