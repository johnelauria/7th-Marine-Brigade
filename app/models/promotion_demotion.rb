class PromotionDemotion < ActiveRecord::Base
  attr_accessible :authority, :effectivity, :from, :rank, :rid_id, :to
  belongs_to :rid
end
