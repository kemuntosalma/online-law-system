class ChapxxxisController < ApplicationController
  before_action :set_chapxxxi, only: [:show, :edit, :update, :destroy]

  # GET /chapxxxis
  # GET /chapxxxis.json
  def index
    if params[:search]

      @chapxxxis = Chapxxxi.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxxis = Chapxxxi.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxxis = Chapxxxi.all
  
    end
  end
  # GET /chapxxxis/1
  # GET /chapxxxis/1.json
  def show
  end

  # GET /chapxxxis/new
  def new
    @chapxxxi = Chapxxxi.new
  end

  # GET /chapxxxis/1/edit
  def edit
  end

  # POST /chapxxxis
  # POST /chapxxxis.json
  def create
    @chapxxxi = Chapxxxi.new(chapxxxi_params)

    respond_to do |format|
      if @chapxxxi.save
        format.html { redirect_to @chapxxxi, notice: 'Chapxxxi was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxxi }
      else
        format.html { render :new }
        format.json { render json: @chapxxxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxxis/1
  # PATCH/PUT /chapxxxis/1.json
  def update
    respond_to do |format|
      if @chapxxxi.update(chapxxxi_params)
        format.html { redirect_to @chapxxxi, notice: 'Chapxxxi was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxxi }
      else
        format.html { render :edit }
        format.json { render json: @chapxxxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxxis/1
  # DELETE /chapxxxis/1.json
  def destroy
    @chapxxxi.destroy
    respond_to do |format|
      format.html { redirect_to chapxxxis_url, notice: 'Chapxxxi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxxi
      @chapxxxi = Chapxxxi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxxi_params
      params.require(:chapxxxi).permit(:section_number, :crime, :law, :search)
    end
end
