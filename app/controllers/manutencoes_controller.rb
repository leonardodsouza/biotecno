class ManutencoesController < ApplicationController
  before_action :set_manutencao, only: [:show, :edit, :update, :destroy]

  # GET /manutencoes
  # GET /manutencoes.json
  def index
    @manutencoes = Manutencao.all.paginate(:page=> params[:page], :per_page => 20).order(created_at: :desc)
  end

  # GET /manutencoes/1
  # GET /manutencoes/1.json
  def show
  end

  # GET /manutencoes/new
  def new
    @manutencao = Manutencao.new
  end

  # GET /manutencoes/1/edit
  def edit
  end

  # POST /manutencoes
  # POST /manutencoes.json
  def create
    @manutencao = Manutencao.new(manutencao_params)

    respond_to do |format|
      if @manutencao.save
        format.html { redirect_to ajudas_path, notice: 'Manutencao was successfully created.' }
        format.json { render :show, status: :created, location: @manutencao }
      else
        format.html { render :new }
        format.json { render json: @manutencao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manutencoes/1
  # PATCH/PUT /manutencoes/1.json
  def update
    respond_to do |format|
      if @manutencao.update(manutencao_params)
        format.html { redirect_to ajudas_path, notice: 'Manutencao was successfully updated.' }
        format.json { render :show, status: :ok, location: @manutencao }
      else
        format.html { render :edit }
        format.json { render json: @manutencao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manutencoes/1
  # DELETE /manutencoes/1.json
  def destroy
    @manutencao.destroy
    respond_to do |format|
      format.html { redirect_to manutencoes_url, notice: 'Manutencao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manutencao
      @manutencao = Manutencao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manutencao_params
      params.require(:manutencao).permit(:nome, :razao, :modelo, :email, :telefone, :estado, :cidade, :solicitacao)
    end
end
