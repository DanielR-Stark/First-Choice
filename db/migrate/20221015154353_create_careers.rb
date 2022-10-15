class CreateCareers < ActiveRecord::Migration[7.0]
  def change
    create_table :careers do |t|
      t.string :name
      t.references :career_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
