class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.text :content
      t.references :movies, null: false, foreign_key: true
      t.references :lists, null: false, foreign_key: true

      t.timestamps
    end
  end
end
