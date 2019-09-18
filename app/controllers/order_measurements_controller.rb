class OrderMeasurementsController < ApplicationController
  before_action :set_store, :set_customer, :set_order
  before_action :set_order_measurement, only: [:show, :edit, :update, :destroy]

  # GET /order_measurements
  # GET /order_measurements.json
  def index
    @order_measurements = OrderMeasurement.all
  end

  # GET /order_measurements/1
  # GET /order_measurements/1.json
  def show
  end

  # GET /order_measurements/new
  def new
    @order_measurement = OrderMeasurement.new
    @order.order_measurement = @order_measurement
  end

  # GET /order_measurements/1/edit
  def edit
  end

  # POST /order_measurements
  # POST /order_measurements.json
  def create
    @order_measurement = OrderMeasurement.new(order_measurement_params)

    respond_to do |format|
      if @order_measurement.save
        if @customer.customer_measurement == nil
          @customer.customer_measurement = CustomerMeasurement.new
          @customer.customer_measurement.upper_body_back_shape = @order.order_measurement.upper_body_back_shape
          @customer.customer_measurement.upper_body_stomach = @order.order_measurement.upper_body_stomach
          @customer.customer_measurement.upper_body_shoulder = @order.order_measurement.upper_body_shoulder
          @customer.customer_measurement.lower_body_posture = @order.order_measurement.lower_body_posture
          @customer.customer_measurement.jacket_or_shirt_length = @order.order_measurement.jacket_or_shirt_length 
          @customer.customer_measurement.jacket_or_shirt_shoulder = @order.order_measurement.jacket_or_shirt_shoulder
          @customer.customer_measurement.jacket_or_shirt_sleeve_length = @order.order_measurement.jacket_or_shirt_sleeve_length
          @customer.customer_measurement.jacket_or_shirt_chest = @order.order_measurement.jacket_or_shirt_chest
          @customer.customer_measurement.jacket_or_shirt_waist = @order.order_measurement.jacket_or_shirt_waist
          @customer.customer_measurement.jacket_or_shirt_neck = @order.order_measurement.jacket_or_shirt_neck
          @customer.customer_measurement.jacket_or_shirt_hip = @order.order_measurement.jacket_or_shirt_hip
          @customer.customer_measurement.jacket_or_shirt_hale_back = @order.order_measurement.jacket_or_shirt_hale_back
          @customer.customer_measurement.jacket_or_shirt_cross_back = @order.order_measurement.jacket_or_shirt_cross_back
          @customer.customer_measurement.jacket_or_shirt_bicep = @order.order_measurement.jacket_or_shirt_bicep
          @customer.customer_measurement.jacket_or_shirt_cross_front = @order.order_measurement.jacket_or_shirt_cross_front
          @customer.customer_measurement.jacket_or_shirt_arm_hole_round = @order.order_measurement.jacket_or_shirt_arm_hole_round
          @customer.customer_measurement.trouser_length = @order.order_measurement.trouser_length
          @customer.customer_measurement.trouser_crotch = @order.order_measurement.trouser_crotch
          @customer.customer_measurement.trouser_inseam = @order.order_measurement.trouser_inseam
          @customer.customer_measurement.trouser_waist = @order.order_measurement.trouser_waist
          @customer.customer_measurement.trouser_hip = @order.order_measurement.trouser_hip
          @customer.customer_measurement.trouser_knee = @order.order_measurement.trouser_knee
          @customer.customer_measurement.trouser_thigh = @order.order_measurement.trouser_thigh
          @customer.customer_measurement.trouser_bottom = @order.order_measurement.trouser_bottom
          @customer.customer_measurement.trouser_f_low = @order.order_measurement.trouser_f_low

          @customer.customer_measurement.save
        end
        

        format.html { redirect_to [@store,@customer,@order], notice: 'Order measurement was successfully created.' }
        format.json { render :show, status: :created, location: @order_measurement }
      else
        format.html { render :new }
        format.json { render json: @order_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_measurements/1
  # PATCH/PUT /order_measurements/1.json
  def update
    respond_to do |format|
      if @order_measurement.update(order_measurement_params)
        if @customer.customer_measurement == nil
          @customer.customer_measurement = CustomerMeasurement.new
        end  

          @customer.customer_measurement.upper_body_back_shape = @order.order_measurement.upper_body_back_shape
          @customer.customer_measurement.upper_body_stomach = @order.order_measurement.upper_body_stomach
          @customer.customer_measurement.upper_body_shoulder = @order.order_measurement.upper_body_shoulder
          @customer.customer_measurement.lower_body_posture = @order.order_measurement.lower_body_posture
          @customer.customer_measurement.jacket_or_shirt_length = @order.order_measurement.jacket_or_shirt_length 
          @customer.customer_measurement.jacket_or_shirt_shoulder = @order.order_measurement.jacket_or_shirt_shoulder
          @customer.customer_measurement.jacket_or_shirt_sleeve_length = @order.order_measurement.jacket_or_shirt_sleeve_length
          @customer.customer_measurement.jacket_or_shirt_chest = @order.order_measurement.jacket_or_shirt_chest
          @customer.customer_measurement.jacket_or_shirt_waist = @order.order_measurement.jacket_or_shirt_waist
          @customer.customer_measurement.jacket_or_shirt_neck = @order.order_measurement.jacket_or_shirt_neck
          @customer.customer_measurement.jacket_or_shirt_hip = @order.order_measurement.jacket_or_shirt_hip
          @customer.customer_measurement.jacket_or_shirt_hale_back = @order.order_measurement.jacket_or_shirt_hale_back
          @customer.customer_measurement.jacket_or_shirt_cross_back = @order.order_measurement.jacket_or_shirt_hale_back
          @customer.customer_measurement.jacket_or_shirt_bicep = @order.order_measurement.jacket_or_shirt_cross_back
          @customer.customer_measurement.jacket_or_shirt_cross_front = @order.order_measurement.jacket_or_shirt_bicep
          @customer.customer_measurement.jacket_or_shirt_arm_hole_round = @order.order_measurement.jacket_or_shirt_cross_front
          @customer.customer_measurement.trouser_length = @order.order_measurement.trouser_length
          @customer.customer_measurement.trouser_crotch = @order.order_measurement.trouser_crotch
          @customer.customer_measurement.trouser_inseam = @order.order_measurement.trouser_inseam
          @customer.customer_measurement.trouser_waist = @order.order_measurement.trouser_waist
          @customer.customer_measurement.trouser_hip = @order.order_measurement.trouser_hip
          @customer.customer_measurement.trouser_knee = @order.order_measurement.trouser_knee
          @customer.customer_measurement.trouser_thigh = @order.order_measurement.trouser_thigh
          @customer.customer_measurement.trouser_bottom = @order.order_measurement.trouser_bottom
          @customer.customer_measurement.trouser_f_low = @order.order_measurement.trouser_f_low

          @customer.customer_measurement.save


        format.html { redirect_to [@store,@customer,@order], notice: 'Order measurement was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_measurement }
      else
        format.html { render :edit }
        format.json { render json: @order_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_measurements/1
  # DELETE /order_measurements/1.json
  def destroy
    @order_measurement.destroy
    respond_to do |format|
      format.html { redirect_to order_measurements_url, notice: 'Order measurement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:customer_id])
    end
    def set_store
      @store = Store.find(params[:store_id])
    end
    def set_order
      @order = Order.find(params[:order_id])
    end
    def set_order_measurement
      @order_measurement = OrderMeasurement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_measurement_params
      params.require(:order_measurement).permit(:upper_body_back_shape, :upper_body_stomach, :upper_body_shoulder, :lower_body_posture, :jacket_or_shirt_length, :jacket_or_shirt_shoulder, :jacket_or_shirt_sleeve_length, :jacket_or_shirt_chest, :jacket_or_shirt_waist, :jacket_or_shirt_neck, :jacket_or_shirt_hip, :jacket_or_shirt_hale_back, :jacket_or_shirt_cross_back, :jacket_or_shirt_bicep, :jacket_or_shirt_cross_front, :jacket_or_shirt_arm_hole_round, :trouser_length, :trouser_crotch, :trouser_inseam, :trouser_waist, :trouser_hip, :trouser_knee, :trouser_thigh, :trouser_bottom, :trouser_f_low, :order_id)
    end
end
