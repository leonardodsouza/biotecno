class AddVisualizacoesToProdutos < ActiveRecord::Migration[5.1]
  def change
    add_column :produtos, :visualizacoes, :integer
  end
end
