class EducationCenterCareer < ApplicationRecord
  belongs_to :education_center
  belongs_to :career
  has_many :enrrollments
end
