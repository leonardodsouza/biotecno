class TraducaoTabelaPaginas < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        Pagina.create_translation_table!({
          :titulo => :string,
          :texto => :text
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Pagina.drop_translation_table! :migrate_data => true
      end
    end
  end
end
