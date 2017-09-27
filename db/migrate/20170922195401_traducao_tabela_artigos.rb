class TraducaoTabelaArtigos < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        Artigo.create_translation_table!({
          :titulo => :string,
          :resumo => :text,
          :texto => :text
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Artigo.drop_translation_table! :migrate_data => true
      end
    end
  end
end
