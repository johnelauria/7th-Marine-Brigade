class PersonalDetail < ActiveRecord::Base
  attr_accessible :AFPSN, :BR_SVC, :assignment, :birthdate, :change_in_name, :duty_address, :first_name, :home_address, :last_name, :middle_name, :national_reg_cards_no, :nationality, :place_of_birth, :rank, :telephone, :tin
  has_one :personal_characteristic, dependent: :destroy
  has_one :marital_history, dependent: :destroy
  has_one :family_history, dependent: :destroy
  has_many :place_of_residences, dependent: :destroy
  has_one :educational_background, dependent: :destroy
  has_one :military_history, dependent: :destroy
  has_many :employments, dependent: :destroy
  has_many :foreign_country_visiteds, dependent: :destroy
  has_one :credit_reputation, dependent: :destroy
  has_one :arrest_record_and_conduct, dependent: :destroy
  has_one :general_information, dependent: :destroy
  has_many :organizations, dependent: :destroy
  has_one :miscellaneou, dependent: :destroy
  has_one :aadt
end
