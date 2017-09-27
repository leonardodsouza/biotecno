class CreateContatos < ActiveRecord::Migration[5.1]
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :razao
      t.string :tipo
      t.string :outro
      t.string :email
      t.string :telefone
      t.string :estado
      t.string :cidade
      t.text :mensagem

      t.timestamps
    end
  end
end
