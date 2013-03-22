class ReceivedMilitaryAward < ActiveRecord::Base
  attr_accessible :awards, :military_history_id
  belongs_to :military_history
end
