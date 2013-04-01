class Dependent < ActiveRecord::Base
  attr_accessible :date_of_birth, :name, :relation, :rid_id
  belongs_to :rid
end
