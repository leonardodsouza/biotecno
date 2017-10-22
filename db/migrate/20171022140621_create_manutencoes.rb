class CreateManutencoes < ActiveRecord::Migration[5.1]
  def change
    create_table :manutencoes do |t|
      t.string :nome
      t.string :razao
      t.string :modelo
      t.string :email
      t.string :telefone
      t.string :estado
      t.string :cidade
      t.string :solicitacao

      t.timestamps
    end
  end
end
