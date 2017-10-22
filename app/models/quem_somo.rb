class QuemSomo < ApplicationRecord
    has_attached_file :img, styles: { medium: "250x320#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :img, content_type: /\Aimage\/.*\z/
end
