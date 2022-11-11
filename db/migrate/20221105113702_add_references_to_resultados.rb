class AddReferencesToResultados < ActiveRecord::Migration[7.0]
  def change
    add_reference(:resultados, :question, foreign_key: true)
  end
end
