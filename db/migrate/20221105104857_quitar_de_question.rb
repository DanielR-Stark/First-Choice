class QuitarDeQuestion < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :name, :string
    remove_column :questions, :statement, :text
  end
end
