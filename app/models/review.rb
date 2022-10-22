class Review < ApplicationRecord
  belongs_to :education_center
  belongs_to :user
  validates :statement, presence: true
end
