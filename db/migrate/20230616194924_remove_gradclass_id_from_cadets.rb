class RemoveGradclassIdFromCadets < ActiveRecord::Migration[7.0]
  def change
    remove_column :cadets, :gradclass_id, :integer
  end
end
