class OrdersController < ApplicationController
  before_action :set_store,:set_customer
  before_action :set_order, only: [:show, :edit, :update, :destroy]

 

  # GET /orders
  # GET /orders.json
  def index
    @orders = @customer.orders.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = @customer.orders.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = @customer.orders.new(order_params)


    respond_to do |format|
      if @order.save
        if @customer.customer_measurement != nil
          @order.order_measurement = OrderMeasurement.new
          @order.order_measurement.upper_body_back_shape = @customer.customer_measurement.upper_body_back_shape
          @order.order_measurement.upper_body_stomach = @customer.customer_measurement.upper_body_stomach
          @order.order_measurement.upper_body_shoulder = @customer.customer_measurement.upper_body_shoulder
          @order.order_measurement.lower_body_posture = @customer.customer_measurement.lower_body_posture
          @order.order_measurement.jacket_or_shirt_length = @customer.customer_measurement.jacket_or_shirt_length 
          @order.order_measurement.jacket_or_shirt_shoulder = @customer.customer_measurement.jacket_or_shirt_shoulder
          @order.order_measurement.jacket_or_shirt_sleeve_length = @customer.customer_measurement.jacket_or_shirt_sleeve_length
          @order.order_measurement.jacket_or_shirt_chest = @customer.customer_measurement.jacket_or_shirt_chest
          @order.order_measurement.jacket_or_shirt_waist = @customer.customer_measurement.jacket_or_shirt_waist
          @order.order_measurement.jacket_or_shirt_neck = @customer.customer_measurement.jacket_or_shirt_neck
          @order.order_measurement.jacket_or_shirt_hip = @customer.customer_measurement.jacket_or_shirt_hip
          @order.order_measurement.jacket_or_shirt_hale_back = @customer.customer_measurement.jacket_or_shirt_hale_back
          @order.order_measurement.jacket_or_shirt_cross_back = @customer.customer_measurement.jacket_or_shirt_cross_back
          @order.order_measurement.jacket_or_shirt_bicep = @customer.customer_measurement.jacket_or_shirt_bicep
          @order.order_measurement.jacket_or_shirt_cross_front = @customer.customer_measurement.jacket_or_shirt_cross_front
          @order.order_measurement.jacket_or_shirt_arm_hole_round = @customer.customer_measurement.jacket_or_shirt_arm_hole_round
          @order.order_measurement.trouser_length = @customer.customer_measurement.trouser_length
          @order.order_measurement.trouser_crotch = @customer.customer_measurement.trouser_crotch
          @order.order_measurement.trouser_inseam = @customer.customer_measurement.trouser_inseam
          @order.order_measurement.trouser_waist = @customer.customer_measurement.trouser_waist
          @order.order_measurement.trouser_hip = @customer.customer_measurement.trouser_hip
          @order.order_measurement.trouser_knee = @customer.customer_measurement.trouser_knee
          @order.order_measurement.trouser_thigh = @customer.customer_measurement.trouser_thigh
          @order.order_measurement.trouser_bottom = @customer.customer_measurement.trouser_bottom
          @order.order_measurement.trouser_f_low = @customer.customer_measurement.trouser_f_low

          @order.order_measurement.save
        end
        format.html { redirect_to [@store,@customer,@order], notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to [@store,@customer,@order], notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to store_customer_orders_url(@store,@customer), notice: 'Order was successfully destroyed.' }
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
      @customer = logged_in_store.customers.find(params[:customer_id])
    end

    def set_store
      @store = logged_in_store #Store.find(params[:store_id])
    end
    def set_order
      @order = @customer.orders.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:order_date, :trail_date, :trail_status, :delivery_date, :delivery_status, :order_pictures, :trail_pictures, :remark, :stitching_cost, :fabric_cost, :stitching_advance, :fabric_advance, :balance_clear_status, :master_allocated, :customer_id)
    end
end
