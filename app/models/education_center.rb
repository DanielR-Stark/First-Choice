class EducationCenter < ApplicationRecord
  has_many :education_center_careers
  has_many :reviews
end


