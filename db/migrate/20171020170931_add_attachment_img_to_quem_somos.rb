class AddAttachmentImgToQuemSomos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :quem_somos do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :quem_somos, :img
  end
end
