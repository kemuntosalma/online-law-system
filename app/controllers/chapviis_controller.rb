class ChapviisController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chapvii, only: [:show, :edit, :update, :destroy]

  # GET /chapviis
  # GET /chapviis.json
  def index
    @chapviis = Chapvii.all
  end

  # GET /chapviis/1
  # GET /chapviis/1.json
  def show
  end

  # GET /chapviis/new
  def new
    @chapvii = Chapvii.new
  end

  # GET /chapviis/1/edit
  def edit
  end

  # POST /chapviis
  # POST /chapviis.json
  def create
    @chapvii = Chapvii.new(chapvii_params)

    respond_to do |format|
      if @chapvii.save
        format.html { redirect_to @chapvii, notice: 'Chapvii was successfully created.' }
        format.json { render :show, status: :created, location: @chapvii }
      else
        format.html { render :new }
        format.json { render json: @chapvii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapviis/1
  # PATCH/PUT /chapviis/1.json
  def update
    respond_to do |format|
      if @chapvii.update(chapvii_params)
        format.html { redirect_to @chapvii, notice: 'Chapvii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapvii }
      else
        format.html { render :edit }
        format.json { render json: @chapvii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapviis/1
  # DELETE /chapviis/1.json
  def destroy
    @chapvii.destroy
    respond_to do |format|
      format.html { redirect_to chapviis_url, notice: 'Chapvii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapvii
      @chapvii = Chapvii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapvii_params
      params.require(:chapvii).permit(:section_number, :crime, :law)
    end
end
