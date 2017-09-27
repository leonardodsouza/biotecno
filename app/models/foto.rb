class Foto < ApplicationRecord
  belongs_to :produto
  has_attached_file :foto, styles: { medium: "380x500#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/
end
