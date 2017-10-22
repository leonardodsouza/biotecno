class ProdutosController < ApplicationController
  before_action :authenticate_usuario!, except: [:index, :show]
  before_action :set_produto, only: [:show, :edit, :update, :destroy]

  # GET /produtos
  # GET /produtos.json
  def index
    @produtos = Produto.all
    @categorias = Categoria.all
    @backgound_4 = Banner.find(4)

    @grafico = Grafico.new
    @grafico.item = 'Produtos'
    @grafico.save
  end

  # GET /produtos/1
  # GET /produtos/1.json
  def show

    @visualizacao = Visualizacao.new
    @visualizacao.modelo = @produto.modelo
    @visualizacao.save

    @produto.increment!(:visualizacoes)
  end

  # GET /produtos/new
  def new
    @produto = Produto.new
  end

  # GET /produtos/1/edit
  def edit
    @foto = Foto.new
    @fotos = Foto.where('produto_id =?', @produto).order(created_at: :desc)
  end

  # POST /produtos
  # POST /produtos.json
  def create
    @produto = Produto.new(produto_params)

    respond_to do |format|
      if @produto.save
        format.html { redirect_to edit_produto_path(@produto), notice: 'Produto was successfully created.' }
        format.json { render :show, status: :created, location: @produto }
      else
        format.html { render :new }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produtos/1
  # PATCH/PUT /produtos/1.json
  def update
    respond_to do |format|
      if @produto.update(produto_params)
        format.html { redirect_to edit_produto_path(@produto), notice: 'Produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @produto }
      else
        format.html { render :edit }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produtos/1
  # DELETE /produtos/1.json
  def destroy
    @produto.destroy
    respond_to do |format|
      format.html { redirect_to produtos_url, notice: 'Produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto
      @produto = Produto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produto_params
      params.require(:produto).permit(:categoria_id, :visualizacoes, :foto, :modelo, :resumo, :descricao, :video)
    end
end
