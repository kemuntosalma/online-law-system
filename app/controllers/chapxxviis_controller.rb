class ChapxxviisController < ApplicationController
  before_action :set_chapxxvii, only: [:show, :edit, :update, :destroy]

  # GET /chapxxviis
  # GET /chapxxviis.json
  def index
    if params[:search]

      @chapxxviis = Chapxxvii.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxviis = Chapxxvii.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxviis = Chapxxvii.all
  
    end
  end
  # GET /chapxxviis/1
  # GET /chapxxviis/1.json
  def show
  end

  # GET /chapxxviis/new
  def new
    @chapxxvii = Chapxxvii.new
  end

  # GET /chapxxviis/1/edit
  def edit
  end

  # POST /chapxxviis
  # POST /chapxxviis.json
  def create
    @chapxxvii = Chapxxvii.new(chapxxvii_params)

    respond_to do |format|
      if @chapxxvii.save
        format.html { redirect_to @chapxxvii, notice: 'Chapxxvii was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxvii }
      else
        format.html { render :new }
        format.json { render json: @chapxxvii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxviis/1
  # PATCH/PUT /chapxxviis/1.json
  def update
    respond_to do |format|
      if @chapxxvii.update(chapxxvii_params)
        format.html { redirect_to @chapxxvii, notice: 'Chapxxvii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxvii }
      else
        format.html { render :edit }
        format.json { render json: @chapxxvii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxviis/1
  # DELETE /chapxxviis/1.json
  def destroy
    @chapxxvii.destroy
    respond_to do |format|
      format.html { redirect_to chapxxviis_url, notice: 'Chapxxvii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxvii
      @chapxxvii = Chapxxvii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxvii_params
      params.require(:chapxxvii).permit(:section_number, :crime, :law, :search)
    end
end
