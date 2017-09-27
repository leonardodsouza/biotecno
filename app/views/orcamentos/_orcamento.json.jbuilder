json.extract! orcamento, :id, :produto_id, :nome, :razao, :tipo, :outro, :email, :telefone, :estado, :cidade, :mensagem, :created_at, :updated_at
json.url orcamento_url(orcamento, format: :json)
