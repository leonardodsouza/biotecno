class AddAttachmentCategoriasToImgs < ActiveRecord::Migration[5.1]
  def self.up
    change_table :categorias do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :categorias, :img
  end
end
