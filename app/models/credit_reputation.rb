class CreditReputation < ActiveRecord::Base
  attr_accessible :filed_assets_liabilities, :name_address_of_banks, :other_income, :personal_detail_id, :salary_defendant, :what_agency, :credit_reference_name1, :credit_reference_address1, :credit_reference_address2, :credit_reference_name2, :credit_reference_address3, :credit_reference_name3
  belongs_to :personal_detail
  validates :credit_reference_name1, :credit_reference_address1, :credit_reference_name2, :credit_reference_address2,:credit_reference_name3, :credit_reference_address3, presence: true

  before_save :delete_if_nil
  before_update :delete_if_nil

  def delete_if_nil
    if self.salary_defendant?
      self.other_income = nil
    end
    unless self.filed_assets_liabilities?
      self.what_agency = nil
    end
  end
end
