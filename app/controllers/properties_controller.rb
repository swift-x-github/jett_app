class PropertiesController < ApplicationController
  before_action :set_property, only: [ :edit, :update, :destroy]
  before_action :authenticate_account!, except: [:index, :show]


  #validates_presence_of :name

  # GET /properties
  # GET /properties.json
  def index
   #@properties =  Property.where(account_id: current_account.id).order('created_at DESC').page(params[:page]).per_page(2)
   if account_signed_in?
      @properties = Property.where(account_id: current_account.id).order('created_at DESC').page(params[:page]).per_page(2) || Property.search(params[:search])
   else 
      @properties = Property.all.order('created_at DESC').page(params[:page]).per_page(2) || Property.search(params[:search])
   end 
      #@products = Product.order("name").page(params[:page]).per_page(5)
     #@properties = Property.where(account_id: current_account.id)
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
    @property = Property.find(params[:id])

  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)
    @property.account_id = current_account.id
    respond_to do |format|
      if @property.save
        format.html { redirect_to properties_url, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params).where(account_id: current_account.id)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
        flash.now[:notice] = "We have exactly #{@property} books available."
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.where(account_id: current_account.id).find(params[:id])
   
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:name, :address, :price, :rooms, :bedrooms, :bathrooms, \
        :image, :property_id, :description, :prop_deteils_property_size, :prop_deteils_year_built, \
        :prop_deteils_garage, :prop_deteils_garage_size,  :prop_deteils_property_type, \
        :prop_deteils_property_status, :add_details_deposit, :add_details_pool_size, :add_details_additional_rooms, \
        :add_details_last_remodel_year, :add_details_amenities, :add_details_equipment, \
        :prop_f_air_cond, :prop_f_barbeque, :prop_f_dryer, :prop_f_gym, :prop_f_laundry, \
        :prop_f_lawn, :prop_f_microwave, :prop_f_outdoor_shower, :prop_f_refrigerator, \
        :prop_f_sauna, :prop_f_swimming_pool, :prop_f_tv_cable, :prop_f_washer,  :prop_f_wi_fi, \
        :prop_f_window_cover, :youtube_link, :postal_index, :country_index, :il_index, :ilce_index, :mahalle_index, :street_name, :house_number_index )
    end
end
