class MilitarySchool < ActiveRecord::Base
  attr_accessible :date_of_attendance, :location, :military_history_id, :name_of_school, :nature_of_training, :rating
  belongs_to :military_history
end
