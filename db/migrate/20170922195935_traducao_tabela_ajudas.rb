class TraducaoTabelaAjudas < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        Ajuda.create_translation_table!({
          :pergunta => :string,
          :resposta => :text
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Ajuda.drop_translation_table! :migrate_data => true
      end
    end
  end
end
