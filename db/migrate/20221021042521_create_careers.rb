class CreateCareers < ActiveRecord::Migration[7.0]
  def change
    create_table :careers do |t|
      t.string :name
      t.text :description
      t.text :duration
      t.text :modality
      t.integer :education_center_id

      t.timestamps
    end
  end
end
