json.extract! assistencia, :id, :nome, :estado, :cidade, :endereco, :telefone, :email, :created_at, :updated_at
json.url assistencia_url(assistencia, format: :json)
