class CreateEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :education_center_career, null: false, foreign_key: true

      t.timestamps
    end
  end
end
