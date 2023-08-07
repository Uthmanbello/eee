class CreateGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :grades do |t|
      t.integer :ca1
      t.integer :ca2
      t.integer :exam
      t.integer :total
      t.string :grade
      t.references :gradcourse, null: false, foreign_key: true
      t.references :gradstudent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
