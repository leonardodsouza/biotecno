class ZerarController < ApplicationController
  def zerar
    Visualizacao.destroy_all
    Grafico.destroy_all
    redirect_to admin_path
  end
end
