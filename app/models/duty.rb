class Duty < ActiveRecord::Base
  attr_accessible :authority, :date1, :date2, :position, :soi_form_id, :unit, :category
  belongs_to :soi_form
end
