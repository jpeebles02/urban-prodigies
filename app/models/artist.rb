class Artist < ApplicationRecord
  has_many :artist_videos
  has_many :videos, through: :artist_videos
  
  belongs_to :genre
end
