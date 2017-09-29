class AdminController < ApplicationController
  before_action :authenticate_usuario!
  def index
    @produtos = Produto.all
  end
end
