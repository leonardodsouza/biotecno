class AjudasController < ApplicationController
  before_action :set_ajuda, only: [:show, :edit, :update, :destroy]

  # GET /ajudas
  # GET /ajudas.json
  def index
    @ajudas = Ajuda.all
    @assistencias = Assistencia.all
    @pagina_3 = Pagina.find(3)
  end

  # GET /ajudas/1
  # GET /ajudas/1.json
  def show
  end

  # GET /ajudas/new
  def new
    @ajuda = Ajuda.new
  end

  # GET /ajudas/1/edit
  def edit
  end

  # POST /ajudas
  # POST /ajudas.json
  def create
    @ajuda = Ajuda.new(ajuda_params)

    respond_to do |format|
      if @ajuda.save
        format.html { redirect_to ajudas_path, notice: 'Ajuda was successfully created.' }
        format.json { render :show, status: :created, location: @ajuda }
      else
        format.html { render :new }
        format.json { render json: @ajuda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ajudas/1
  # PATCH/PUT /ajudas/1.json
  def update
    respond_to do |format|
      if @ajuda.update(ajuda_params)
        format.html { redirect_to ajudas_path, notice: 'Ajuda was successfully updated.' }
        format.json { render :show, status: :ok, location: @ajuda }
      else
        format.html { render :edit }
        format.json { render json: @ajuda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ajudas/1
  # DELETE /ajudas/1.json
  def destroy
    @ajuda.destroy
    respond_to do |format|
      format.html { redirect_to ajudas_url, notice: 'Ajuda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ajuda
      @ajuda = Ajuda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ajuda_params
      params.require(:ajuda).permit(:pergunta, :resposta)
    end
end
