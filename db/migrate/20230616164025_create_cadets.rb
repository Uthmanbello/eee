class CreateCadets < ActiveRecord::Migration[7.0]
  def change
    create_table :cadets do |t|
      t.string :name
      t.string :service
      t.integer :num
      t.references :gradclass, null: false, foreign_key: true

      t.timestamps
    end
  end
end
