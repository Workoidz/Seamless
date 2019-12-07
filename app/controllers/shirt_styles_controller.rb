class ShirtStylesController < ApplicationController
  before_action :set_store, :set_customer, :set_order
  before_action :set_shirt_style, only: [:show, :edit, :update, :destroy]



  # GET /shirt_styles
  # GET /shirt_styles.json
  def index
    @shirt_styles = ShirtStyle.all
  end

  # GET /shirt_styles/1
  # GET /shirt_styles/1.json
  def show
  end

  # GET /shirt_styles/new
  def new
    @shirt_style = @order.shirt_styles.new
  end

  # GET /shirt_styles/1/edit
  def edit
  end

  # POST /shirt_styles
  # POST /shirt_styles.json
  def create
    @shirt_style = @order.shirt_styles.new(shirt_style_params)

    respond_to do |format|
      if @shirt_style.save
        format.html { redirect_to [@store,@customer,@order], notice: 'Shirt style was successfully created.' }
        format.json { render :show, status: :created, location: @shirt_style }
      else
        format.html { render :new }
        format.json { render json: @shirt_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shirt_styles/1
  # PATCH/PUT /shirt_styles/1.json
  def update
    respond_to do |format|
      if @shirt_style.update(shirt_style_params)
        format.html { redirect_to [@store,@customer,@order], notice: 'Shirt style was successfully updated.' }
        format.json { render :show, status: :ok, location: @shirt_style }
      else
        format.html { render :edit }
        format.json { render json: @shirt_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shirt_styles/1
  # DELETE /shirt_styles/1.json
  def destroy
    @shirt_style.destroy
    respond_to do |format|
      format.html { redirect_to shirt_styles_url, notice: 'Shirt style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # added for paper_trail logs, for whodunnit
  def current_user
    Employee.find(session[:employee_id])
    
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
    def set_shirt_style
      @shirt_style = @order.shirt_styles.find(params[:id]) #ShirtStyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shirt_style_params
      params.require(:shirt_style).permit(:style_for, :style_for_fabric_picture, :style, :lapel, :vent, :pocket, :fit, :sleeve_placket, :front_cut, :related_pictures, :master_comment, :order_id)
    end
end
