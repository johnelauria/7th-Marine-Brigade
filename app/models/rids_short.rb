class RidsShort < ActiveRecord::Base
  attr_accessible :city, :manila_address, :nrotc_school, :nrotc_year_graduate, :other_skills, :rid_id, :school_address, :so_go_number, :year_and_course, :zip_code
  belongs_to :rid
end
