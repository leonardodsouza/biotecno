class TraducaoTabelaBanners < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        Banner.create_translation_table!({
          :titulo => :string,
          :descricao => :text
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Banner.drop_translation_table! :migrate_data => true
      end
    end
  end
end
