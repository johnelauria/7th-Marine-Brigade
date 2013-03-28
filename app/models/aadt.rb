class Aadt < ActiveRecord::Base
  attr_accessible :afpsn, :assignment_mobilization_center, :authority, :date_of_commission, :date_of_last_promotion, :licence, :name, :permanent_address, :personal_detail_id, :present_reserve_unit_assignment, :purpose_of_aadt, :rank, :residence_tel_no, :skills, :special, :undergo_thirty_days, :aadt_effective
  belongs_to :personal_detail
end
