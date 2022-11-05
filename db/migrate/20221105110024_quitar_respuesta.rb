class QuitarRespuesta < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :respuesta, :integer
  end
end
