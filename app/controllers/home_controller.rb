class HomeController < ApplicationController
  def index
    @categorias = Categoria.all.order(:id)
    @backgound_1 = Banner.find(1)
    @backgound_2 = Banner.find(2)
    @backgound_3 = Banner.find(3)
    @pagina_1 = Pagina.find(1)
    @pagina_2 = Pagina.find(2)

    @grafico = Grafico.new
    @grafico.item = 'Inicial'
    @grafico.save
  end
end
