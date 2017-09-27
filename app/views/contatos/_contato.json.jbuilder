json.extract! contato, :id, :nome, :razao, :tipo, :email, :telefone, :estado, :cidade, :mensagem, :created_at, :updated_at
json.url contato_url(contato, format: :json)
