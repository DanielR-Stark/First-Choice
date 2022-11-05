class AddToQuestion < ActiveRecord::Migration[7.0]
  def change
    add_column(:questions, :p1, :integer)
    add_column(:questions, :p2, :integer)
    add_column(:questions, :p3, :integer)
    add_column(:questions, :p4, :integer)
    add_column(:questions, :p5, :integer)
    add_column(:questions, :p6, :integer)
    add_column(:questions, :p7, :integer)
    add_column(:questions, :p8, :integer)
    add_column(:questions, :p9, :integer)
    add_column(:questions, :p10, :integer)
  end
end
