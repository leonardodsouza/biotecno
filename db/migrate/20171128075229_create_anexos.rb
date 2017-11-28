class CreateAnexos < ActiveRecord::Migration[5.1]
  def change
    create_table :anexos do |t|
      t.string :nome
      t.text :legenda

      t.timestamps
    end
  end
end
