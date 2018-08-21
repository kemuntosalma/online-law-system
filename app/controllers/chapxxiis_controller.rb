class ChapxxiisController < ApplicationController
  before_action :set_chapxxii, only: [:show, :edit, :update, :destroy]

  # GET /chapxxiis
  # GET /chapxxiis.json
  def index
    if params[:search]

      @chapxxiis = Chapxxii.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxiis = Chapxxii.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxiis = Chapxxii.all
  
    end
  end

  # GET /chapxxiis/1
  # GET /chapxxiis/1.json
  def show
  end

  # GET /chapxxiis/new
  def new
    @chapxxii = Chapxxii.new
  end

  # GET /chapxxiis/1/edit
  def edit
  end

  # POST /chapxxiis
  # POST /chapxxiis.json
  def create
    @chapxxii = Chapxxii.new(chapxxii_params)

    respond_to do |format|
      if @chapxxii.save
        format.html { redirect_to @chapxxii, notice: 'Chapxxii was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxii }
      else
        format.html { render :new }
        format.json { render json: @chapxxii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxiis/1
  # PATCH/PUT /chapxxiis/1.json
  def update
    respond_to do |format|
      if @chapxxii.update(chapxxii_params)
        format.html { redirect_to @chapxxii, notice: 'Chapxxii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxii }
      else
        format.html { render :edit }
        format.json { render json: @chapxxii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxiis/1
  # DELETE /chapxxiis/1.json
  def destroy
    @chapxxii.destroy
    respond_to do |format|
      format.html { redirect_to chapxxiis_url, notice: 'Chapxxii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxii
      @chapxxii = Chapxxii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxii_params
      params.require(:chapxxii).permit(:section_number, :crime, :law, :search)
    end
end
