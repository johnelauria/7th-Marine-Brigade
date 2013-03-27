class GeneralInformation < ActiveRecord::Base
  attr_accessible :personal_detail_id, :reference_address1, :reference_address2, :reference_address3, :reference_address4, :reference_address5, :reference_name1, :reference_name2, :reference_name3, :reference_name4, :reference_name5, :neighbor_address1, :neighbor_name1, :neighbor_address2, :neighbor_address3, :neighbor_name2, :neighbor_name3
  belongs_to :personal_detail
end
