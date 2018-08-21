class ChapxxxviisController < ApplicationController
  before_action :set_chapxxxvii, only: [:show, :edit, :update, :destroy]

  # GET /chapxxxviis
  # GET /chapxxxviis.json
  def index
    if params[:search]

      @chapxxxviis = Chapxxxvii.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxxviis = Chapxxxvii.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxxviis = Chapxxxvii.all
  
    end
  end

  # GET /chapxxxviis/1
  # GET /chapxxxviis/1.json
  def show
  end

  # GET /chapxxxviis/new
  def new
    @chapxxxvii = Chapxxxvii.new
  end

  # GET /chapxxxviis/1/edit
  def edit
  end

  # POST /chapxxxviis
  # POST /chapxxxviis.json
  def create
    @chapxxxvii = Chapxxxvii.new(chapxxxvii_params)

    respond_to do |format|
      if @chapxxxvii.save
        format.html { redirect_to @chapxxxvii, notice: 'Chapxxxvii was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxxvii }
      else
        format.html { render :new }
        format.json { render json: @chapxxxvii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxxviis/1
  # PATCH/PUT /chapxxxviis/1.json
  def update
    respond_to do |format|
      if @chapxxxvii.update(chapxxxvii_params)
        format.html { redirect_to @chapxxxvii, notice: 'Chapxxxvii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxxvii }
      else
        format.html { render :edit }
        format.json { render json: @chapxxxvii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxxviis/1
  # DELETE /chapxxxviis/1.json
  def destroy
    @chapxxxvii.destroy
    respond_to do |format|
      format.html { redirect_to chapxxxviis_url, notice: 'Chapxxxvii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxxvii
      @chapxxxvii = Chapxxxvii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxxvii_params
      params.require(:chapxxxvii).permit(:section_number, :crime, :law, :search)
    end
end
