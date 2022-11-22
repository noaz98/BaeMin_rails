class DibsController < ApplicationController
  before_action :set_dib, only: %i[ show edit update destroy ]

  # GET /dibs or /dibs.json
  def index
    @dibs = Dib.all
  end

  # GET /dibs/1 or /dibs/1.json
  def show
  end

  # GET /dibs/new
  def new
    @dib = Dib.new
  end

  # GET /dibs/1/edit
  def edit
  end

  # POST /dibs or /dibs.json
  def create
    @dib = Dib.new(dib_params)

    respond_to do |format|
      if @dib.save
        format.html { redirect_to dib_url(@dib), notice: "Dib was successfully created." }
        format.json { render :show, status: :created, location: @dib }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dib.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dibs/1 or /dibs/1.json
  def update
    respond_to do |format|
      if @dib.update(dib_params)
        format.html { redirect_to dib_url(@dib), notice: "Dib was successfully updated." }
        format.json { render :show, status: :ok, location: @dib }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dib.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dibs/1 or /dibs/1.json
  def destroy
    @dib.destroy

    respond_to do |format|
      format.html { redirect_to dibs_url, notice: "Dib was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dib
      @dib = Dib.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dib_params
      params.fetch(:dib, {})
    end
end
