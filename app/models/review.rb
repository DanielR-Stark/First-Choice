class Review < ApplicationRecord
  belongs_to :user
  belongs_to :education_center

  validates :statement, presence: true
end
