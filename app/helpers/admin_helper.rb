module AdminHelper
    def total_quem_somos
        Grafico.where('item = ?', 'Quem somos').count
    end
    def total_produtos
        Grafico.where('item = ?', 'Produtos').count
    end
    def total_noticias
        Grafico.where('item = ?', 'Notícias').count
    end
    def total_videos
        Grafico.where('item = ?', 'Vídeos').count
    end
    def total_suporte
        Grafico.where('item = ?', 'Suporte').count
    end  
    def total_assistencia
        Grafico.where('item = ?', 'Assistência').count
    end   
    def total_perguntas_e_respostas
        Grafico.where('item = ?', 'Perguntas e respostas').count
    end  
    def total_inicial
        Grafico.where('item = ?', 'Inicial').count
    end       
end

