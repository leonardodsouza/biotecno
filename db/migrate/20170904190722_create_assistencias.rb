class CreateAssistencias < ActiveRecord::Migration[5.1]
  def change
    create_table :assistencias do |t|
      t.string :nome
      t.string :estado
      t.string :cidade
      t.string :endereco
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
