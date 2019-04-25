class Video < ApplicationRecord
  has_many :artist_videos
  has_many :artists, through: :artist_videos
end
