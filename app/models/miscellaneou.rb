class Miscellaneou < ActiveRecord::Base
  attr_accessible :hobbies, :lie_detection_test, :personal_detail_id
  has_many :language_and_dialects
  belongs_to :personal_detail
end
