class RenameReference < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookmarks, :movies_id, :movie_id
    rename_column :bookmarks, :lists_id, :list_id
  end
end
