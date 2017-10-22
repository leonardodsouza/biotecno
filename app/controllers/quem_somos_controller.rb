class QuemSomosController < ApplicationController
  before_action :authenticate_usuario!, except: [:show]
  before_action :set_quem_somo, only: [:show, :edit, :update, :destroy]

  # GET /quem_somos
  # GET /quem_somos.json
  def index
    @quem_somos = QuemSomo.all
  end

  # GET /quem_somos/1
  # GET /quem_somos/1.json
  def show
    @grafico = Grafico.new
    @grafico.item = 'Quem somos'
    @grafico.save
  end

  # GET /quem_somos/new
  def new
    @quem_somo = QuemSomo.new
  end

  # GET /quem_somos/1/edit
  def edit
  end

  # POST /quem_somos
  # POST /quem_somos.json
  def create
    @quem_somo = QuemSomo.new(quem_somo_params)

    respond_to do |format|
      if @quem_somo.save
        format.html { redirect_to @quem_somo, notice: 'Quem somo was successfully created.' }
        format.json { render :show, status: :created, location: @quem_somo }
      else
        format.html { render :new }
        format.json { render json: @quem_somo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quem_somos/1
  # PATCH/PUT /quem_somos/1.json
  def update
    respond_to do |format|
      if @quem_somo.update(quem_somo_params)
        format.html { redirect_to @quem_somo, notice: 'Quem somo was successfully updated.' }
        format.json { render :show, status: :ok, location: @quem_somo }
      else
        format.html { render :edit }
        format.json { render json: @quem_somo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quem_somos/1
  # DELETE /quem_somos/1.json
  def destroy
    @quem_somo.destroy
    respond_to do |format|
      format.html { redirect_to quem_somos_url, notice: 'Quem somo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quem_somo
      @quem_somo = QuemSomo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quem_somo_params
      params.require(:quem_somo).permit(:titulo, :img, :texto)
    end
end
