class AddOrdemToVideos < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :ordem, :integer
  end
end
