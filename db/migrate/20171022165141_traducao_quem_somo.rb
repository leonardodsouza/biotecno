class TraducaoQuemSomo < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        QuemSomo.create_translation_table!({
          :titulo => :string,
          :texto => :text
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        QuemSomo.drop_translation_table! :migrate_data => true
      end
    end
  end
end
