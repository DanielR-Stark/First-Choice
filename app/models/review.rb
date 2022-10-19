class Review < ApplicationRecord
  belongs_to :enrollment
  belongs_to :user
  belongs_to :education_center

  validates :statement, presence: true
end
