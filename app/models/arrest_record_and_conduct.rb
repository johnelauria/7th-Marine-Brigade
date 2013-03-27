class ArrestRecordAndConduct < ActiveRecord::Base
  attr_accessible :administrative_case_charged, :arrested_or_detained_pd, :case_nature_place_of_detention, :convicted_for_violation, :explain_administrative_charge, :family_member_convicted, :family_name_of_court, :name_of_court, :personal_detail_id, :taking_liquor_or_narcotic
  belongs_to :personal_detail
  before_save :delete_if_nil
  before_update :delete_if_nil

  def delete_if_nil
    unless self.convicted_for_violation?
      self.name_of_court = nil
    end
    unless self.family_member_convicted?
      self.family_name_of_court = nil
    end
    unless administrative_case_charged?
      self.explain_administrative_charge = nil
    end
    unless self.arrested_or_detained_pd?
      self.case_nature_place_of_detention = nil
    end
  end
end
