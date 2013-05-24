class Child < ActiveRecord::Base
  attr_accessible :address, :birth_date, :marital_history_id, :name, :personal_detail_id
  belongs_to :personal_detail

  validates :name, :marital_history_id, presence: true
end
