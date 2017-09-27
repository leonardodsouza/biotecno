class AdminController < ApplicationController
  def index
    @produtos = Produto.all
  end
end
