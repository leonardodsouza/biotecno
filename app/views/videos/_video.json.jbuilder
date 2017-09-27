json.extract! video, :id, :titulo, :texto, :url, :created_at, :updated_at
json.url video_url(video, format: :json)
