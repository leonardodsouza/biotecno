class CreateArtigos < ActiveRecord::Migration[5.1]
  def change
    create_table :artigos do |t|
      t.string :titulo
      t.text :resumo
      t.text :texto
      t.integer :visualizacoes

      t.timestamps
    end
  end
end
