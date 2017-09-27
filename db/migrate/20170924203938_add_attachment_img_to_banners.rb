class AddAttachmentImgToBanners < ActiveRecord::Migration[5.1]
  def self.up
    change_table :banners do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :banners, :img
  end
end
