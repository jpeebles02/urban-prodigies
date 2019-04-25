json.array! @artists.each do |artist|
  json.partial! "artist.json.jbuilder", artist: artist
end