class Anexo < ApplicationRecord
    has_attached_file :arquivo
    validates_attachment :arquivo, content_type: { content_type: "application/pdf" }    
end
