class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :education_center_career
end
