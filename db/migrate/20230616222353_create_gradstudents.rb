class CreateGradstudents < ActiveRecord::Migration[7.0]
  def change
    create_table :gradstudents do |t|
      t.string :name
      t.string :service
      t.string :level
      t.integer :num

      t.timestamps
    end
  end
end
