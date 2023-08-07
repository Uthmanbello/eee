class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :name
      t.references :program, null: false, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
