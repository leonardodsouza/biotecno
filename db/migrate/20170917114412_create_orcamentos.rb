class CreateOrcamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :orcamentos do |t|
      t.references :produto, foreign_key: true
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
