class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.references :categoria, foreign_key: true
      t.string :modelo
      t.text :resumo
      t.text :descricao
      t.string :video

      t.timestamps
    end
  end
end
