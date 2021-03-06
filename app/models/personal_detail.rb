class PersonalDetail < ActiveRecord::Base
  attr_accessible :AFPSN, :BR_SVC, :assignment, :birthdate, :change_in_name, :duty_address, :first_name, :last_name, :middle_name, :national_reg_cards_no, :nationality, :place_of_birth, :rank, :telephone, :tin, :suffix, :telephone_area_code, :street_name, :street_number, :mobile_number, :zip_code, :subdivision, :province, :city
  has_one :personal_characteristic, dependent: :destroy
  has_many :marital_histories, dependent: :destroy
  has_one :family_history, dependent: :destroy
  has_many :place_of_residences, dependent: :destroy
  has_many :educational_backgrounds, dependent: :destroy
  has_one :military_history, dependent: :destroy
  has_many :employments, dependent: :destroy
  has_many :foreign_country_visiteds, dependent: :destroy
  has_one :credit_reputation, dependent: :destroy
  has_one :arrest_record_and_conduct, dependent: :destroy
  has_one :general_information, dependent: :destroy
  has_many :organizations, dependent: :destroy
  has_one :miscellaneou, dependent: :destroy
  has_one :aadt, dependent: :destroy
  has_one :rid, dependent: :destroy
  has_one :soi_form, dependent: :destroy
  has_one :security_tag_application, dependent: :destroy
  has_many :vehicle_passcards, dependent: :destroy
  has_one :id_form_reservist, dependent: :destroy
  has_many :children, dependent: :destroy

  validates :AFPSN, :first_name, :middle_name, :last_name, :suffix, :birthdate, presence: true
end