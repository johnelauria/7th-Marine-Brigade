class ImportantUnitAssignment < ActiveRecord::Base
  attr_accessible :date1, :date2, :military_history_id, :unit
  belongs_to :military_history
end
