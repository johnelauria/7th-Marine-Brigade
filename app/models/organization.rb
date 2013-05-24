class Organization < ActiveRecord::Base
  attr_accessible :address, :date_of_membership, :name, :personal_detail_id, :function, :position_held
  belongs_to :personal_detail
end
