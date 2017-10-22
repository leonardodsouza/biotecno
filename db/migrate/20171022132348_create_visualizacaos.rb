class CreateVisualizacaos < ActiveRecord::Migration[5.1]
  def change
    create_table :visualizacaos do |t|
      t.string :modelo

      t.timestamps
    end
  end
end
