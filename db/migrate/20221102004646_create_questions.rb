class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :name
      t.string :statement
      t.integer :respuesta
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
