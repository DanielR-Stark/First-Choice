class Question < ApplicationRecord
  belongs_to :quiz
  validates :respuesta, inclusion: { in: %w[1 2 3 4 5],
    message: "%{value} no es valor valido de 1 a 5" }
end
