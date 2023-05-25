class DeleteSFromTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :bookmarks, :Bookmark
    rename_table :movies, :Movie
    rename_table :lists, :list
  end
end
