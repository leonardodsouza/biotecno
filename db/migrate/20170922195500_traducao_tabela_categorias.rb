class TraducaoTabelaCategorias < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        Categoria.create_translation_table!({
          :nome => :string,
          :descricao => :text
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Categoria.drop_translation_table! :migrate_data => true
      end
    end
  end
end
