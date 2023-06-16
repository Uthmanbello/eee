class RenameClassColumnInCadets < ActiveRecord::Migration[7.0]
  def change
    rename_column :cadets, :class, :level
  end
end
