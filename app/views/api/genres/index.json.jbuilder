json.array! @genres.each do |genre|
  json.partial! "genre.json.jbuilder", genre: genre
end