class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
      t.string :image_url
      t.string :video_id
      t.string :genre_id

      t.timestamps
    end
  end
end
