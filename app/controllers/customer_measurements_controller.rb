class CustomerMeasurementsController < ApplicationController
  before_action :set_store, :set_customer 
  before_action :set_customer_measurement, only: [:show, :edit, :update, :destroy]

  # GET /customer_measurements
  # GET /customer_measurements.json
  def index
    @customer_measurements = @customer.customer_measurement
  end

  # GET /customer_measurements/1
  # GET /customer_measurements/1.json
  def show
  end

  # GET /customer_measurements/new
  def new
    @customer_measurement = CustomerMeasurement.new
    @customer.customer_measurement = @customer_measurement
  end

  # GET /customer_measurements/1/edit
  def edit
  end

  # POST /customer_measurements
  # POST /customer_measurements.json
  def create
    @customer_measurement = CustomerMeasurement.new(customer_measurement_params)

    respond_to do |format|
      if @customer_measurement.save
        format.html { redirect_to [@store,@customer,@customer_measurement], notice: 'Customer measurement was successfully created.' }
        format.json { render :show, status: :created, location: @customer_measurement }
      else
        format.html { render :new }
        format.json { render json: @customer_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_measurements/1
  # PATCH/PUT /customer_measurements/1.json
  def update
    respond_to do |format|
      if @customer_measurement.update(customer_measurement_params)
        format.html { redirect_to [@store,@customer,@customer_measurement], notice: 'Customer measurement was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_measurement }
      else
        format.html { render :edit }
        format.json { render json: @customer_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_measurements/1
  # DELETE /customer_measurements/1.json
  def destroy
    @customer_measurement.destroy
    respond_to do |format|
      format.html { redirect_to customer_measurements_url, notice: 'Customer measurement was successfully destroyed.' }
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
    def set_customer_measurement
      @customer_measurement = CustomerMeasurement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_measurement_params
      params.require(:customer_measurement).permit(:upper_body_back_shape, :upper_body_stomach, :upper_body_shoulder, :lower_body_posture, :jacket_or_shirt_length, :jacket_or_shirt_shoulder, :jacket_or_shirt_sleeve_length, :jacket_or_shirt_chest, :jacket_or_shirt_waist, :jacket_or_shirt_neck, :jacket_or_shirt_hip, :jacket_or_shirt_hale_back, :jacket_or_shirt_cross_back, :jacket_or_shirt_bicep, :jacket_or_shirt_cross_front, :jacket_or_shirt_arm_hole_round, :trouser_length, :trouser_crotch, :trouser_inseam, :trouser_waist, :trouser_hip, :trouser_knee, :trouser_thigh, :trouser_bottom, :trouser_f_low, :customer_id)
    end
end
