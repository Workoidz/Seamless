class StoresController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]
  before_action :set_store, only: [:show, :edit, :update, :destroy]

  # GET /stores
  # GET /stores.json
  def index
    #@stores = Store.all
  end

  # GET /stores/1
  # GET /stores/1.json
  def show
  end

  # GET /stores/new
  def new
    @store = Store.new
  end

  # GET /stores/1/edit
  def edit
  end

  # POST /stores
  # POST /stores.json
  def create
    @store = Store.new(store_params)

    respond_to do |format|
      if @store.save

        admin = @store.employees.new
        admin.employee_name = "Admin"
        admin.role = "admin"
        admin.mobile = "admin@"+@store.contact_number
        admin.password = @store.contact_number
        admin.save

        store_login = @store.employees.new
        store_login.employee_name = "Store"
        store_login.role = "store"
        store_login.mobile = "store@"+@store.contact_number
        store_login.password = @store.contact_number
        store_login.save

        format.html { redirect_to @store, notice: "Store was successfully created with Admin-login : #{admin.mobile} & password : #{@store.contact_number} AND Store-login : #{store_login.mobile} & password : #{@store.contact_number}" }
        format.json { render :show, status: :created, location: @store }
      else
        format.html { render :new }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stores/1
  # PATCH/PUT /stores/1.json
  def update
    respond_to do |format|
      if @store.update(store_params)
        format.html { redirect_to @store, notice: 'Store was successfully updated.' }
        format.json { render :show, status: :ok, location: @store }
      else
        format.html { render :edit }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stores/1
  # DELETE /stores/1.json
  def destroy
    @store.destroy
    respond_to do |format|
      format.html { redirect_to stores_url, notice: 'Store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
       @store =  logged_in_store   #Store.find(params[:store_id])
      # @store = Store.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_params
      params.require(:store).permit(:store_name, :contact_person_name, :address, :contact_number, :email, :facebook_link, :whatsapp_number, :youtube_link, :instagram_link, :website, :logo)
    end
end
