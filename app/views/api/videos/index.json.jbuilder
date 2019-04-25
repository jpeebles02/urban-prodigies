json.array! @videos.each do |video|
  json.partial! "video.json.jbuilder", video: video
end