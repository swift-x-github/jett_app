class IlsController < ApplicationController
  before_action :set_il, only: [:show, :edit, :update, :destroy]

  # GET /ils
  # GET /ils.json
  def index
    @ils = Il.all
  end

  # GET /ils/1
  # GET /ils/1.json
  def show
  end

  # GET /ils/new
  def new
    @il = Il.new
  end

  # GET /ils/1/edit
  def edit
  end

  # POST /ils
  # POST /ils.json
  def create
    @il = Il.new(il_params)

    respond_to do |format|
      if @il.save
        format.html { redirect_to @il, notice: 'Il was successfully created.' }
        format.json { render :show, status: :created, location: @il }
      else
        format.html { render :new }
        format.json { render json: @il.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ils/1
  # PATCH/PUT /ils/1.json
  def update
    respond_to do |format|
      if @il.update(il_params)
        format.html { redirect_to @il, notice: 'Il was successfully updated.' }
        format.json { render :show, status: :ok, location: @il }
      else
        format.html { render :edit }
        format.json { render json: @il.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ils/1
  # DELETE /ils/1.json
  def destroy
    @il.destroy
    respond_to do |format|
      format.html { redirect_to ils_url, notice: 'Il was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_il
      @il = Il.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def il_params
      params.require(:il).permit(:name, :description, :capital, :country_id)
    end
end
