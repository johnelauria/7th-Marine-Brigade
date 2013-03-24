class Employment < ActiveRecord::Base
  attr_accessible :address, :employment_date, :name, :nature_of_leaving, :personal_detail_id, :retirement, :type_of_employment
  belongs_to :personal_detail
end
