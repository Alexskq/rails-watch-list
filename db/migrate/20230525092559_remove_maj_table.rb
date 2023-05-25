class RemoveMajTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :Bookmarks, :bookmarks
    rename_table :Lists, :lists
    rename_table :Movies, :movies
  end
end
