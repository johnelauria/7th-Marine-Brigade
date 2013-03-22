class MilitaryHistory < ActiveRecord::Base
  attr_accessible :date_commission, :date_of_cad, :personal_detail_id
  belongs_to :personal_detail
  has_many :important_unit_assignments
  has_many :military_schools
  has_many :received_military_awards
end
