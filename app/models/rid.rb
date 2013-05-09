class Rid < ActiveRecord::Base
  attr_accessible :blood_type, :gsis, :person_to_notify, :personal_detail_id, :philhealth, :province, :province_contact, :religion, :size_of_bdu, :size_of_cap, :size_of_combat, :sss, :tin, :civilian_contact_number, :civilian_occupation, :civilian_office_address, :relation_to_notify, :address_to_notify, :contact_to_notify
  belongs_to :personal_detail
  has_many :dependents, dependent: :destroy
  has_many :civilian_military_awards, dependent: :destroy
  has_many :promotion_demotions, dependent: :destroy
  has_one :rids_short, dependent: :destroy
end
