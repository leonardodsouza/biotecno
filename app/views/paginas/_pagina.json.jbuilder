json.extract! pagina, :id, :titulo, :texto, :created_at, :updated_at
json.url pagina_url(pagina, format: :json)
