class FamilyHistory < ActiveRecord::Base
  attr_accessible :father_address, :father_citizenship, :father_date_of_birth, :father_in_law_address, :father_in_law_birth_date, :father_in_law_citizenship, :father_in_law_name, :father_in_law_naturalized, :father_in_law_naturalized_date, :father_in_law_naturalized_place, :father_in_law_occupation, :father_in_law_place_of_birth, :father_in_law_place_of_employment, :father_name, :father_naturalized, :father_naturalized_date, :father_naturalized_place, :father_occupation, :father_place_of_birth, :father_place_of_employment, :mother_citizenship, :mother_date_of_birth, :mother_in_law_address, :mother_in_law_birth_date, :mother_in_law_citizenship, :mother_in_law_name, :mother_in_law_naturalized, :mother_in_law_naturalized_date, :mother_in_law_naturalized_place, :mother_in_law_occupation, :mother_in_law_place_of_birth, :mother_in_law_place_of_employment, :mother_name, :mother_naturalized, :mother_naturalized_date, :mother_naturalized_place, :mother_occupation, :mother_place_of_birth, :mother_place_of_employment, :personal_detail_id, :mother_address
  belongs_to :personal_detail
  has_many :brothers_and_sisters
  before_save :if_father_not_naturalized
  before_update :if_father_not_naturalized

  def if_father_not_naturalized
    self.father_naturalized_date = nil
    self.father_naturalized_place = nil
  end
end
