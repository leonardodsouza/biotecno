json.extract! manutencao, :id, :nome, :razao, :modelo, :email, :telefone, :estado, :cidade, :solicitacao, :created_at, :updated_at
json.url manutencao_url(manutencao, format: :json)
