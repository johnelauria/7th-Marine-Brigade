class BrothersAndSister < ActiveRecord::Base
  attr_accessible :address, :age, :family_history_id, :name, :occupation
  belongs_to :family_history
end
