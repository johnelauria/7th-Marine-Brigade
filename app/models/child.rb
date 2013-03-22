class Child < ActiveRecord::Base
  attr_accessible :address, :birth_date, :marital_history_id, :name
  belongs_to :marital_history
end
