class CreateCategorias < ActiveRecord::Migration[5.1]
  def change
    create_table :categorias do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
