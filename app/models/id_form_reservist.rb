class IdFormReservist < ActiveRecord::Base
  attr_accessible :mother_maiden_firstname, :mother_maiden_lastname, :mother_maiden_middlename, :other_identifying_data, :personal_detail_id
  belongs_to :personal_detail
end
