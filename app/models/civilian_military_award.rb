class CivilianMilitaryAward < ActiveRecord::Base
  attr_accessible :authority, :category, :date_awarded, :rid_id, :type_of_award
  belongs_to :rid
end
