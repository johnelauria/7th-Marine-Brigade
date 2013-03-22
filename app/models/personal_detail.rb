class PersonalDetail < ActiveRecord::Base
  attr_accessible :AFPSN, :BR_SVC, :assignment, :birthdate, :change_in_name, :duty_address, :first_name, :home_address, :last_name, :middle_name, :national_reg_cards_no, :nationality, :place_of_birth, :rank, :telephone, :tin
  has_one :personal_characteristic
  has_one :marital_history
  has_one :family_history
  has_many :place_of_residences
  has_one :educational_background
  has_one :military_history
end
