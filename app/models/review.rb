class Review < ApplicationRecord
  validates :statement, presence: true
end
