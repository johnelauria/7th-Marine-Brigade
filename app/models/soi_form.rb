class SoiForm < ActiveRecord::Base
  attr_accessible :active_comsd_svc, :date_of_compulsory_retirement, :length_of_military, :next_of_kin, :personal_detail_id, :postal_address, :postal_area_code, :postal_tel_num, :remarks, :statement_of_service_remarks, :present_duty_assignment
  belongs_to :personal_detail
  has_many :appreciation_merits, dependent: :destroy
  has_many :commendations, dependent: :destroy
  has_many :duties, dependent: :destroy
end
