class CreateGraficos < ActiveRecord::Migration[5.1]
  def change
    create_table :graficos do |t|
      t.string :item
      t.date :data

      t.timestamps
    end
  end
end
