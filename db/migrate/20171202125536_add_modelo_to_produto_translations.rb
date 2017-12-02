class AddModeloToProdutoTranslations < ActiveRecord::Migration[5.1]
  def change
    add_column :produto_translations, :modelo, :string
  end
end
