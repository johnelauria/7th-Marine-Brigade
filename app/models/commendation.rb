class Commendation < ActiveRecord::Base
  attr_accessible :awarded_by, :date_received, :soi_form_id
  belongs_to :soi_form
end
