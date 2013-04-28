class VehiclePasscard < ActiveRecord::Base
  attr_accessible :chassis_number, :color, :decal_number, :motor_number, :personal_detail_id, :plate_number, :vehicle_make, :year_model, :category
  belongs_to :personal_detail
end
