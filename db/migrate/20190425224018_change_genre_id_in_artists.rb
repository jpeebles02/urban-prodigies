class ChangeGenreIdInArtists < ActiveRecord::Migration[5.2]
  def change
    remove_column :artists, :genre_id, :string
    add_column :artists, :genre_id, :integer
  end
end
