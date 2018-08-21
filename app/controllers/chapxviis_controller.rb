class ChapxviisController < ApplicationController
  before_action :set_chapxvii, only: [:show, :edit, :update, :destroy]

  # GET /chapxviis
  # GET /chapxviis.json
  def index
    if params[:search]

      @chapxviis = Chapxvii.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxviis = Chapxvii.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxviis = Chapxvii.all
  
    end
  end

  # GET /chapxviis/1
  # GET /chapxviis/1.json
  def show
  end

  # GET /chapxviis/new
  def new
    @chapxvii = Chapxvii.new
  end

  # GET /chapxviis/1/edit
  def edit
  end

  # POST /chapxviis
  # POST /chapxviis.json
  def create
    @chapxvii = Chapxvii.new(chapxvii_params)

    respond_to do |format|
      if @chapxvii.save
        format.html { redirect_to @chapxvii, notice: 'Chapxvii was successfully created.' }
        format.json { render :show, status: :created, location: @chapxvii }
      else
        format.html { render :new }
        format.json { render json: @chapxvii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxviis/1
  # PATCH/PUT /chapxviis/1.json
  def update
    respond_to do |format|
      if @chapxvii.update(chapxvii_params)
        format.html { redirect_to @chapxvii, notice: 'Chapxvii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxvii }
      else
        format.html { render :edit }
        format.json { render json: @chapxvii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxviis/1
  # DELETE /chapxviis/1.json
  def destroy
    @chapxvii.destroy
    respond_to do |format|
      format.html { redirect_to chapxviis_url, notice: 'Chapxvii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxvii
      @chapxvii = Chapxvii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxvii_params
      params.require(:chapxvii).permit(:section_number, :crime, :law, :search)
    end
end
