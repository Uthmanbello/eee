class CreatePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :programs do |t|
      t.string :name
      t.string :image
      t.string :establish

      t.timestamps
    end
  end
end
