class CreateGradcourses < ActiveRecord::Migration[7.0]
  def change
    create_table :gradcourses do |t|
      t.string :code
      t.string :title
      t.integer :units
      t.references :semester, null: false, foreign_key: true
      t.references :gradclass, null: false, foreign_key: true

      t.timestamps
    end
  end
end
