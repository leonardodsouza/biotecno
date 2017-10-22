class AssistenciasController < ApplicationController
  before_action :authenticate_usuario!, except: [:index]
  before_action :set_assistencia, only: [:show, :edit, :update, :destroy]

  # GET /assistencias
  # GET /assistencias.json
  def index
    @assistencias = Assistencia.all
    @backgound_6 = Banner.find(6)

    @grafico = Grafico.new
    @grafico.item = 'Assistências'
    @grafico.save
  end

  # GET /assistencias/1
  # GET /assistencias/1.json
  def show
  end

  # GET /assistencias/new
  def new
    @assistencia = Assistencia.new
  end

  # GET /assistencias/1/edit
  def edit
  end

  # POST /assistencias
  # POST /assistencias.json
  def create
    @assistencia = Assistencia.new(assistencia_params)

    respond_to do |format|
      if @assistencia.save
        format.html { redirect_to assistencias_path, notice: 'Assistencia was successfully created.' }
        format.json { render :show, status: :created, location: @assistencia }
      else
        format.html { render :new }
        format.json { render json: @assistencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assistencias/1
  # PATCH/PUT /assistencias/1.json
  def update
    respond_to do |format|
      if @assistencia.update(assistencia_params)
        format.html { redirect_to assistencias_path, notice: 'Assistencia was successfully updated.' }
        format.json { render :show, status: :ok, location: @assistencia }
      else
        format.html { render :edit }
        format.json { render json: @assistencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assistencias/1
  # DELETE /assistencias/1.json
  def destroy
    @assistencia.destroy
    respond_to do |format|
      format.html { redirect_to assistencias_url, notice: 'Assistencia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assistencia
      @assistencia = Assistencia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assistencia_params
      params.require(:assistencia).permit(:nome, :estado, :cidade, :endereco, :telefone, :email)
    end
end
