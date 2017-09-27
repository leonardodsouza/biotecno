class CreateFotos < ActiveRecord::Migration[5.1]
  def change
    create_table :fotos do |t|
      t.references :produto, foreign_key: true
      t.string :legenda

      t.timestamps
    end
  end
end
