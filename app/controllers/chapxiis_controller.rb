class ChapxiisController < ApplicationController
  before_action :set_chapxii, only: [:show, :edit, :update, :destroy]

  # GET /chapxiis
  # GET /chapxiis.json
  def index
    if params[:search]

      @chapxiis = Chapxii.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxiis = Chapxii.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxiis = Chapxii.all
  
    end
  end
  # GET /chapxiis/1
  # GET /chapxiis/1.json
  def show
  end

  # GET /chapxiis/new
  def new
    @chapxii = Chapxii.new
  end

  # GET /chapxiis/1/edit
  def edit
  end

  # POST /chapxiis
  # POST /chapxiis.json
  def create
    @chapxii = Chapxii.new(chapxii_params)

    respond_to do |format|
      if @chapxii.save
        format.html { redirect_to @chapxii, notice: 'Chapxii was successfully created.' }
        format.json { render :show, status: :created, location: @chapxii }
      else
        format.html { render :new }
        format.json { render json: @chapxii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxiis/1
  # PATCH/PUT /chapxiis/1.json
  def update
    respond_to do |format|
      if @chapxii.update(chapxii_params)
        format.html { redirect_to @chapxii, notice: 'Chapxii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxii }
      else
        format.html { render :edit }
        format.json { render json: @chapxii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxiis/1
  # DELETE /chapxiis/1.json
  def destroy
    @chapxii.destroy
    respond_to do |format|
      format.html { redirect_to chapxiis_url, notice: 'Chapxii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxii
      @chapxii = Chapxii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxii_params
      params.require(:chapxii).permit(:section_number, :crime, :law, :search)
    end
end
