class CreateLecturers < ActiveRecord::Migration[7.0]
  def change
    create_table :lecturers do |t|
      t.string :name
      t.string :email
      t.string :degrees
      t.string :appointment
      t.string :doa
      t.string :pic
      t.string :office

      t.timestamps
    end
  end
end
