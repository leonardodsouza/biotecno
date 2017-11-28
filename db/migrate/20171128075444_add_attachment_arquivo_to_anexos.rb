class AddAttachmentArquivoToAnexos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :anexos do |t|
      t.attachment :arquivo
    end
  end

  def self.down
    remove_attachment :anexos, :arquivo
  end
end
