class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :description
      t.string :video_url
      t.string :artist_id

      t.timestamps
    end
  end
end
