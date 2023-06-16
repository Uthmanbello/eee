class CreateGradclasses < ActiveRecord::Migration[7.0]
  def change
    create_table :gradclasses do |t|
      t.string :name
      t.string :rc
      t.references :semester, null: false, foreign_key: true

      t.timestamps
    end
  end
end
