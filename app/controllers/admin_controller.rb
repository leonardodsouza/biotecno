class AdminController < ApplicationController
  before_action :authenticate_usuario!
  def index
    @visitas = Grafico.where('created_at > ?', 10.day.ago)
    @visualizacoes = Visualizacao.where('created_at > ?', 10.day.ago)
    @produtos = Produto.all.order(:visualizacoes)
  end
end
