class MahalesController < ApplicationController
  before_action :set_mahale, only: [:show, :edit, :update, :destroy]

  # GET /mahales
  # GET /mahales.json
  def index
    @mahales = Mahale.all
  end

  # GET /mahales/1
  # GET /mahales/1.json
  def show
  end

  # GET /mahales/new
  def new
    @mahale = Mahale.new
  end

  # GET /mahales/1/edit
  def edit
  end

  # POST /mahales
  # POST /mahales.json
  def create
    @mahale = Mahale.new(mahale_params)

    respond_to do |format|
      if @mahale.save
        format.html { redirect_to @mahale, notice: 'Mahale was successfully created.' }
        format.json { render :show, status: :created, location: @mahale }
      else
        format.html { render :new }
        format.json { render json: @mahale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mahales/1
  # PATCH/PUT /mahales/1.json
  def update
    respond_to do |format|
      if @mahale.update(mahale_params)
        format.html { redirect_to @mahale, notice: 'Mahale was successfully updated.' }
        format.json { render :show, status: :ok, location: @mahale }
      else
        format.html { render :edit }
        format.json { render json: @mahale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mahales/1
  # DELETE /mahales/1.json
  def destroy
    @mahale.destroy
    respond_to do |format|
      format.html { redirect_to mahales_url, notice: 'Mahale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mahale
      @mahale = Mahale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mahale_params
      params.require(:mahale).permit(:name, :description, :ilce_id)
    end
end
