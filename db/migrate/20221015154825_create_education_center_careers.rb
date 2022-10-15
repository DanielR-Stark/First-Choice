class CreateEducationCenterCareers < ActiveRecord::Migration[7.0]
  def change
    create_table :education_center_careers do |t|
      t.references :education_center, null: false, foreign_key: true
      t.references :career, null: false, foreign_key: true

      t.timestamps
    end
  end
end
