class IlcesController < ApplicationController
  before_action :set_ilce, only: [:show, :edit, :update, :destroy]

  # GET /ilces
  # GET /ilces.json
  def index
    @ilces = Ilce.all
  end

  # GET /ilces/1
  # GET /ilces/1.json
  def show
  end

  # GET /ilces/new
  def new
    @ilce = Ilce.new
  end

  # GET /ilces/1/edit
  def edit
  end

  # POST /ilces
  # POST /ilces.json
  def create
    @ilce = Ilce.new(ilce_params)

    respond_to do |format|
      if @ilce.save
        format.html { redirect_to @ilce, notice: 'Ilce was successfully created.' }
        format.json { render :show, status: :created, location: @ilce }
      else
        format.html { render :new }
        format.json { render json: @ilce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ilces/1
  # PATCH/PUT /ilces/1.json
  def update
    respond_to do |format|
      if @ilce.update(ilce_params)
        format.html { redirect_to @ilce, notice: 'Ilce was successfully updated.' }
        format.json { render :show, status: :ok, location: @ilce }
      else
        format.html { render :edit }
        format.json { render json: @ilce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ilces/1
  # DELETE /ilces/1.json
  def destroy
    @ilce.destroy
    respond_to do |format|
      format.html { redirect_to ilces_url, notice: 'Ilce was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ilce
      @ilce = Ilce.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ilce_params
      params.require(:ilce).permit(:name, :description, :il_id)
    end
end
