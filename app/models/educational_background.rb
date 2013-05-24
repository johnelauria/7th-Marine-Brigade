class EducationalBackground < ActiveRecord::Base
  attr_accessible :personal_detail_id, :location, :date_of_attendance1, :date_of_attendance2, :year_graduate, :level, :standing, :completed, :degree
  belongs_to :personal_detail
end
