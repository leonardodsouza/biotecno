class AddOrdemArtigos < ActiveRecord::Migration[5.1]
  def change
    add_column :artigos, :ordem, :integer, default: 1
  end
end
