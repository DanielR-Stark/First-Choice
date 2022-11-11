class Question < ApplicationRecord
  belongs_to :quiz
  has_many :resultados, dependent: :destroy
end
