class PlaceOfResidence < ActiveRecord::Base
  attr_accessible :complete_address, :date_left, :starting_date, :personal_detail_id
  belongs_to :personal_detail
end
