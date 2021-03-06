json.array!(@songs) do |song|
  json.extract! song, :id, :name, :artist, :band_id
  json.url song_url(song, format: :json)
end
