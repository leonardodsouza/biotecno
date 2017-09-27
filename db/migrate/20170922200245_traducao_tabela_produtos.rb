class TraducaoTabelaProdutos < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        Produto.create_translation_table!({
          :resumo => :text,
          :descricao => :text
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Produto.drop_translation_table! :migrate_data => true
      end
    end
  end
end
