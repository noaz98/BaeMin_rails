class CeosController < ApplicationController
  before_action :set_ceo, only: %i[ show edit update destroy ]

  # GET /ceos or /ceos.json
  def index
    @ceos = Ceo.all
  end

  # GET /ceos/1 or /ceos/1.json
  def show
  end

  # GET /ceos/new
  def new
    @ceo = Ceo.new
  end

  # GET /ceos/1/edit
  def edit
  end

  # POST /ceos or /ceos.json
  def create
    @ceo = Ceo.new(ceo_params)

    respond_to do |format|
      if @ceo.save
        format.html { redirect_to ceo_url(@ceo), notice: "Ceo was successfully created." }
        format.json { render :show, status: :created, location: @ceo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ceo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ceos/1 or /ceos/1.json
  def update
    respond_to do |format|
      if @ceo.update(ceo_params)
        format.html { redirect_to ceo_url(@ceo), notice: "Ceo was successfully updated." }
        format.json { render :show, status: :ok, location: @ceo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ceo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ceos/1 or /ceos/1.json
  def destroy
    @ceo.destroy

    respond_to do |format|
      format.html { redirect_to ceos_url, notice: "Ceo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ceo
      @ceo = Ceo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ceo_params
      params.require(:ceo).permit(:login_id, :password, :phone, :email)
    end
end
