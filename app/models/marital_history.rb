class MaritalHistory < ActiveRecord::Base
  attr_accessible :address, :birthdate, :marital_status, :name, :name_of_spouse, :date_of_marriage, :place_of_marriage, :birth_date, :birth_place, :occupation, :place_of_employment, :personal_detail_id
  belongs_to :personal_detail
  has_many :children
end