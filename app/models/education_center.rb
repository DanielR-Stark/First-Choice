class EducationCenter < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :careers, dependent: :destroy
end
