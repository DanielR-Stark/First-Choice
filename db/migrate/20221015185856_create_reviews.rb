class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :statement
      t.references :enrollment, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :education_center_career, null: false, foreign_key: true

      t.timestamps
    end
  end
end
