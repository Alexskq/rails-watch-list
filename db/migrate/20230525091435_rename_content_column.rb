class RenameContentColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookmarks, :content, :comment
  end
end
