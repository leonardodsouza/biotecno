class Contato < ApplicationRecord
    validates_presence_of :nome, :razao, :tipo, :email, :telefone, :estado, :cidade, :mensagem
end
