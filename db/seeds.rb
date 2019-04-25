# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Genre.create!(name: "Fashion", description: "")
Genre.create!(name: "Music", description: "")

Video.create!(name: 'Episode 1', description: 'Interview with Dondre Smith, CEO of ALMVGHTY', video_url: 'https://www.youtube.com/watch?v=DmzZjcTjLXs&t=1s')
Video.create!(name: 'Episode 2', description: 'Interview with DJ Chaboi. A Champaign, IL based DJ', video_url: 'https://www.youtube.com/watch?v=otEz7N2U-Sg&t=118s')
Video.create!(name: 'Episode 3', description: 'Interview with Louie Kason and DJ SP$N, both Champaign based artists', video_url: 'https://www.youtube.com/watch?v=bnUMzY1Brow&t=1070s')

Artist.create!(name: "Dondre Smith", bio: "", genre_id: 1, image_url: "")
Artist.create!(name: "Louie Kason", bio: "", genre_id: 2, image_url: "")
Artist.create!(name: "DJ $pen", bio: "", genre_id: 2, image_url: "")
Artist.create!(name: "DJ Chaboi", bio: "", genre_id: 2, image_url: "")

ArtistVideo.create!(video_id: 1, artist_id: 1, location: "Chicago, IL")
ArtistVideo.create!(video_id: 3, artist_id: 2, location: "Champaign, IL")
ArtistVideo.create!(video_id: 3, artist_id: 3, location: "Champaign, IL")
ArtistVideo.create!(video_id: 2, artist_id: 4, location: "Champaign, IL")