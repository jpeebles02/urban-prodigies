class CreateArtistVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_videos do |t|
      t.integer :video_id
      t.integer :artist_id
      t.string :location

      t.timestamps
    end
  end
end
