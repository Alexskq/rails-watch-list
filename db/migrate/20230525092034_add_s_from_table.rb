class AddSFromTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :Bookmark, :Bookmarks
    rename_table :list, :Lists
    rename_table :Movie, :Movies
  end
end
