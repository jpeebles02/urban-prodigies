class ArtistVideo < ApplicationRecord
  belongs_to :artist, optional: true
  belongs_to :video, optional: true
end
