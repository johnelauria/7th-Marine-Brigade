class SecurityTagApplication < ActiveRecord::Base
  attr_accessible :cellphone_notify, :city_address, :city_cellphone, :city_telephone, :date_reported, :name_to_notify, :office_division, :personal_detail_id, :signed_at, :signed_on, :telephone_notify, :address_to_notify, :area_code_to_notify, :position, :relation_to_notify
  belongs_to :personal_detail
end
