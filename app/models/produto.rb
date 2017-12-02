class Produto < ApplicationRecord
  translates :modelo, :resumo, :descricao
  belongs_to :categoria
  has_many :fotos, dependent: :destroy
  has_attached_file :foto, styles: { medium: "380x500#", lista:"220x220#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/

end
