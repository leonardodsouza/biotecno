class Artigo < ApplicationRecord
    translates :titulo, :resumo, :texto, :visualizacoes
    has_attached_file :foto, styles: { medium: "150x200#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/
end
