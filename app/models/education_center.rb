class EducationCenter < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
