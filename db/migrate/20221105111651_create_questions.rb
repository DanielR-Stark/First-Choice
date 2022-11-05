class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.integer :p1
      t.integer :p2
      t.integer :p3
      t.integer :p4
      t.integer :p5
      t.integer :p6
      t.integer :p7
      t.integer :p8
      t.integer :p9
      t.integer :p10

      t.timestamps
    end
  end
end
