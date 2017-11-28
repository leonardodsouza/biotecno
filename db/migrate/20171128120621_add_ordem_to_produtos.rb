class AddOrdemToProdutos < ActiveRecord::Migration[5.1]
  def change
    add_column :produtos, :ordem, :integer, default: 1
  end
end
