json.extract! produto, :id, :categoria_id, :modelo, :resumo, :descricao, :video, :created_at, :updated_at
json.url produto_url(produto, format: :json)
