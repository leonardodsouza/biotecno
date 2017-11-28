class AddStilosToCategorias < ActiveRecord::Migration[5.1]
  def change
    add_column :categorias, :classe, :string, default: "#FFFFFF"
    add_column :categorias, :titulo, :string, default: "#009688"
    add_column :categorias, :texto, :string, default: "#000000"
  end
end
