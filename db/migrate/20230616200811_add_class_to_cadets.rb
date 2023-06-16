class AddClassToCadets < ActiveRecord::Migration[7.0]
  def change
    add_column :cadets, :class, :string
  end
end
