class AddSerieToManutencoes < ActiveRecord::Migration[5.1]
  def change
    add_column :manutencoes, :serie, :string
  end
end
