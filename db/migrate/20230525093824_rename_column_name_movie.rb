class RenameColumnNameMovie < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :name, :title
  end
end
