class AddAttachmentFotoToFotos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :fotos do |t|
      t.attachment :foto
    end
  end

  def self.down
    remove_attachment :fotos, :foto
  end
end
