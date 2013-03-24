class ForeignCountryVisited < ActiveRecord::Base
  attr_accessible :country_visited, :end_date, :personal_detail_id, :purpose_of_visit, :start_date
  belongs_to :personal_detail
end
