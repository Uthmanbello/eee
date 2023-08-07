class RenameTypeColumnInOptions < ActiveRecord::Migration[7.0]
  def change
    rename_column :options, :type, :option_type
  end
end
