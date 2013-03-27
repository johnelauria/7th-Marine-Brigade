class Organization < ActiveRecord::Base
  attr_accessible :address, :date_of_membership, :name, :personal_detail_id
  belongs_to :personal_detail
end
