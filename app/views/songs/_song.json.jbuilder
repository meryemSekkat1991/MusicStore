json.extract! song, :id, :title, :singer, :kind, :created_at, :updated_at
json.url song_url(song, format: :json)
