class CreateResultados < ActiveRecord::Migration[7.0]
  def change
    create_table :resultados do |t|
      t.string :top1
      t.string :top2
      t.string :top3
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
