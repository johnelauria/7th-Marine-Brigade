class PersonalCharacteristic < ActiveRecord::Base
  attr_accessible :age, :build, :color_of_eyes, :color_of_hair, :height, :physical_or_mental_defect, :recent_serious_illness, :scars_or_marks, :sex, :state_of_health, :weight, :personal_detail_id
  belongs_to :personal_detail
end
