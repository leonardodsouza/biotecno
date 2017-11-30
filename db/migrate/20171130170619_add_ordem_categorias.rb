class AddOrdemCategorias < ActiveRecord::Migration[5.1]
  def change
    add_column :categorias, :ordem, :integer, default: 1
  end
end
