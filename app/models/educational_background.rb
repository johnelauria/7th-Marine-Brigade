class EducationalBackground < ActiveRecord::Base
  attr_accessible :civil_service_eligibility, :college_date_of_attendance1, :college_date_of_attendance2, :college_location, :college_year_graduate, :elementary_date_of_attendance1, :elementary_date_of_attendance2, :elementary_location, :elementary_year_graduate, :high_school_date_of_attendance1, :high_school_date_of_attendance2, :high_school_location, :high_school_year_graduate, :other_date_of_attendance1, :other_date_of_attendance2, :other_location, :other_year_graduate, :post_graduate_date_of_attendance1, :post_graduate_date_of_attendance2, :post_graduate_location, :post_graduate_year_graduate, :personal_detail_id, :college_course, :postgraduate_course, :other_course
  belongs_to :personal_detail
  before_save :delete_if_location_is_blank
  before_update :delete_if_location_is_blank

  def delete_if_location_is_blank
    if self.high_school_location == ""
      self.high_school_date_of_attendance1 = nil
      self.high_school_date_of_attendance2 = nil
      self.high_school_year_graduate = nil
    end
    if self.college_location == ""
      self.college_date_of_attendance1 = nil
      self.college_date_of_attendance2 = nil
      self.college_year_graduate = nil
    end
    if self.post_graduate_location == ""
      self.post_graduate_date_of_attendance1 = nil
      self.post_graduate_date_of_attendance2 = nil
      self.post_graduate_year_graduate = nil
    end
    if self.other_location == ""
      self.other_date_of_attendance1 = nil
      self.other_date_of_attendance2 = nil
      self.other_year_graduate = nil
    end
  end
end
