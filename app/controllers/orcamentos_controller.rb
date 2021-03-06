class OrcamentosController < ApplicationController
  before_action :authenticate_usuario!, except: [:edit, :create]
  before_action :set_orcamento, only: [:show, :destroy]

  # GET /orcamentos
  # GET /orcamentos.json
  def index
    @orcamentos = Orcamento.all.paginate(:page=> params[:page], :per_page => 20).order(created_at: :desc)
  end

  # GET /orcamentos/1
  # GET /orcamentos/1.json
  def show
  end

  # GET /orcamentos/new
  def new
    @orcamento = Orcamento.new
  end

  # GET /orcamentos/1/edit
  def edit
    @orcamento = Orcamento.new
    @produto = Produto.find(params[:id])
  end

  # POST /orcamentos
  # POST /orcamentos.json
  def create
    @orcamento = Orcamento.new(orcamento_params)
    @email = Email.find(1)
    respond_to do |format|
      if @orcamento.save

        EmailMailer.orcamento(@orcamento, @email).deliver_now  


        format.html { redirect_to produto_path(@orcamento.produto_id), notice: 'Orcamento was successfully created.' }
        format.json { render :show, status: :created, location: @orcamento }
      else
        format.html { render :new }
        format.json { render json: @orcamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orcamentos/1
  # PATCH/PUT /orcamentos/1.json
  def update
    respond_to do |format|
      if @orcamento.update(orcamento_params)
        format.html { redirect_to @orcamento, notice: 'Orcamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @orcamento }
      else
        format.html { render :edit }
        format.json { render json: @orcamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orcamentos/1
  # DELETE /orcamentos/1.json
  def destroy
    @orcamento.destroy
    respond_to do |format|
      format.html { redirect_to orcamentos_url, notice: 'Orcamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orcamento
      @orcamento = Orcamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orcamento_params
      params.require(:orcamento).permit(:produto_id, :nome, :razao, :tipo, :outro, :email, :telefone, :estado, :cidade, :mensagem)
    end
end
