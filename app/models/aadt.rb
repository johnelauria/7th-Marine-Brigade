class Aadt < ActiveRecord::Base
  attr_accessible :afpsn, :assignment_mobilization_center, :authority, :date_of_commission, :date_of_last_promotion, :licence, :name, :permanent_address, :personal_detail_id, :present_reserve_unit_assignment, :purpose_of_aadt, :rank, :residence_tel_no, :skills, :special, :undergo_thirty_days, :aadt_effective, :type_of_aadt, :source_of_commission
  belongs_to :personal_detail

  def highest_education
    if self.personal_detail.educational_backgrounds.find_by_level("Post Graduate").present?
      highest_education = "Post Graduate"
    else
      if self.personal_detail.educational_backgrounds.find_by_level("College").present?
        highest_education = "College"
      else
      if self.personal_detail.educational_backgrounds.find_by_level("High School").present?
        highest_education = "High School"
      else
        highest_education = "Low"
      end
    end
  end
end
end