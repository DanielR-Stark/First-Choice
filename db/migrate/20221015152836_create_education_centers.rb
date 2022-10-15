class CreateEducationCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :education_centers do |t|
      t.string :name
      t.string :city
      t.text :description

      t.timestamps
    end
  end
end
