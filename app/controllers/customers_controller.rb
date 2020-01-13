class CustomersController < ApplicationController
  before_action :set_store
  before_action :set_customer, only: [:show, :edit, :update, :destroy]


  # GET /customers
  # GET /customers.json
  def index
    @customers = @store.customers.order(customer_name: :asc)
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = @store.customers.new 
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = @store.customers.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to [@store,@customer], notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to [@store,@customer], notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to store_customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = logged_in_store.customers.find(params[:id])
    end

    def set_store
       @store =  logged_in_store   #Store.find(params[:store_id])
      #@store = Store.find(params[:store_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:customer_name, :contact_number, :email, :address, :date_of_birth, :date_of_anniversary, :profile, :picture, :sales_person, :store_id)
    end
end
