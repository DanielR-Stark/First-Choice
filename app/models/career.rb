class Career < ApplicationRecord
  belongs_to :career_category
  has_many :education_center_careers
end
