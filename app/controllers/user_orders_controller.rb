class UserOrdersController < ApplicationController
  before_action :set_user_order, only: %i[ show edit update destroy ]

  # GET /user_orders or /user_orders.json
  def index
    @user_orders = UserOrder.all
  end

  # GET /user_orders/1 or /user_orders/1.json
  def show
  end

  # GET /user_orders/new
  def new
    @user_order = UserOrder.new
  end

  # GET /user_orders/1/edit
  def edit
  end

  # POST /user_orders or /user_orders.json
  def create
    @user_order = UserOrder.new(user_order_params)

    respond_to do |format|
      if @user_order.save
        format.html { redirect_to user_order_url(@user_order), notice: "User order was successfully created." }
        format.json { render :show, status: :created, location: @user_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_orders/1 or /user_orders/1.json
  def update
    respond_to do |format|
      if @user_order.update(user_order_params)
        format.html { redirect_to user_order_url(@user_order), notice: "User order was successfully updated." }
        format.json { render :show, status: :ok, location: @user_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_orders/1 or /user_orders/1.json
  def destroy
    @user_order.destroy

    respond_to do |format|
      format.html { redirect_to user_orders_url, notice: "User order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_order
      @user_order = UserOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_order_params
      params.fetch(:user_order, {})
    end
end
