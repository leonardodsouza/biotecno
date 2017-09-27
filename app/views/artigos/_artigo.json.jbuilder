json.extract! artigo, :id, :titulo, :texto, :visualizacoes, :created_at, :updated_at
json.url artigo_url(artigo, format: :json)
