class BasketsController < ApplicationController
  before_action :set_basket, only: %i[ show edit update destroy ]

  # GET /baskets or /baskets.json
  def index
    @baskets = Basket.all
  end

  # GET /baskets/1 or /baskets/1.json
  def show
  end

  # GET /baskets/new
  def new
    @basket = Basket.new
  end

  # GET /baskets/1/edit
  def edit
  end

  # POST /baskets or /baskets.json
  def create
    @basket = Basket.new(basket_params)

    respond_to do |format|
      if @basket.save
        format.html { redirect_to basket_url(@basket), notice: "Basket was successfully created." }
        format.json { render :show, status: :created, location: @basket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baskets/1 or /baskets/1.json
  def update
    respond_to do |format|
      if @basket.update(basket_params)
        format.html { redirect_to basket_url(@basket), notice: "Basket was successfully updated." }
        format.json { render :show, status: :ok, location: @basket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @basket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baskets/1 or /baskets/1.json
  def destroy
    @basket.destroy

    respond_to do |format|
      format.html { redirect_to baskets_url, notice: "Basket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basket
      @basket = Basket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def basket_params
      params.require(:basket).permit(:count, :menu_price)
    end
end
