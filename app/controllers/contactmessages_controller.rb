class ContactmessagesController < ApplicationController
  before_action :set_contactmessage, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_account!, only: [:index, :show, :edit, :update, :destroy]
  # GET /contactmessages
  # GET /contactmessages.json
  def index
    @contactmessages = Contactmessage.all.order('created_at DESC').page(params[:page]).per_page(2)
    
  end

  # GET /contactmessages/1
  # GET /contactmessages/1.json
  def show
  end

  # GET /contactmessages/new
  def new
    @contactmessage = Contactmessage.new
    @shortname_firma = Firma.first.shortname
    @fullname_firma = Firma.last.fullname
    @email_firma = Firma.last.email
    @website_firma = Firma.last.website
    @tel_firma = Firma.last.tel
    @address_firma = Firma.last.address
  end

  # GET /contactmessages/1/edit
  def edit
  end

  # POST /contactmessages
  # POST /contactmessages.json
  def create
    @contactmessage = Contactmessage.new(contactmessage_params)

    respond_to do |format|
      if @contactmessage.save
        format.html { redirect_to root_path, notice: 'Contactmessage was successfully created.' }
        format.json { render :show, status: :created, location: @contactmessage }
      else
        format.html { render :new }
        format.json { render json: @contactmessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactmessages/1
  # PATCH/PUT /contactmessages/1.json
  def update
    respond_to do |format|
      if @contactmessage.update(contactmessage_params)
        format.html { redirect_to root_path, notice: 'Contactmessage was successfully updated.' }
        format.json { render :show, status: :ok, location: @contactmessage }
      else
        format.html { render :edit }
        format.json { render json: @contactmessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactmessages/1
  # DELETE /contactmessages/1.json
  def destroy
    @contactmessage.destroy
    respond_to do |format|
      format.html { redirect_to contactmessages_url, notice: 'Contactmessage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactmessage
      @contactmessage = Contactmessage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contactmessage_params
      params.require(:contactmessage).permit(:first_name, :last_name, :email, :subject, :message, :ip_address)
    end
end
