class TrouserStylesController < ApplicationController
  before_action :set_store, :set_customer, :set_order
  before_action :set_trouser_style, only: [:show, :edit, :update, :destroy]

  # GET /trouser_styles
  # GET /trouser_styles.json
  def index
    @trouser_styles = TrouserStyle.all
  end

  # GET /trouser_styles/1
  # GET /trouser_styles/1.json
  def show
  end

  # GET /trouser_styles/new
  def new
    @trouser_style = @order.trouser_styles.new
  end

  # GET /trouser_styles/1/edit
  def edit
  end

  # POST /trouser_styles
  # POST /trouser_styles.json
  def create
    @trouser_style = @order.trouser_styles.new(trouser_style_params)

    respond_to do |format|
      if @trouser_style.save
        format.html { redirect_to [@store,@customer,@order], notice: 'Trouser style was successfully created.' }
        format.json { render :show, status: :created, location: @trouser_style }
      else
        format.html { render :new }
        format.json { render json: @trouser_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trouser_styles/1
  # PATCH/PUT /trouser_styles/1.json
  def update
    respond_to do |format|
      if @trouser_style.update(trouser_style_params)
        format.html { redirect_to [@store,@customer,@order], notice: 'Trouser style was successfully updated.' }
        format.json { render :show, status: :ok, location: @trouser_style }
      else
        format.html { render :edit }
        format.json { render json: @trouser_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trouser_styles/1
  # DELETE /trouser_styles/1.json
  def destroy
    @trouser_style.destroy
    respond_to do |format|
      format.html { redirect_to trouser_styles_url, notice: 'Trouser style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = logged_in_store.customers.find(params[:customer_id]) #Customer.find(params[:customer_id])
    end
    def set_store
      @store = logged_in_store #Store.find(params[:store_id])
    end
    def set_order
      @order = @customer.orders.find(params[:order_id]) #Order.find(params[:order_id])
    end
    def set_trouser_style
      @trouser_style = @order.shirt_styles.find(params[:id]) #TrouserStyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trouser_style_params
      params.require(:trouser_style).permit(:style_for, :style_for_fabric_picture, :belt, :pleat, :pocket, :back_pocket, :bottom, :loops, :fit, :related_pictures, :master_comment, :order_id)
    end
end
