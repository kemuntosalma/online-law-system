class ChapxisController < ApplicationController
  before_action :set_chapxi, only: [:show, :edit, :update, :destroy]

  # GET /chapxis
  # GET /chapxis.json
  def index
    if params[:search]

      @chapxis = Chapxi.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxis = Chapxi.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxis = Chapxi.all
  
    end
  end

  # GET /chapxis/1
  # GET /chapxis/1.json
  def show
  end

  # GET /chapxis/new
  def new
    @chapxi = Chapxi.new
  end

  # GET /chapxis/1/edit
  def edit
  end

  # POST /chapxis
  # POST /chapxis.json
  def create
    @chapxi = Chapxi.new(chapxi_params)

    respond_to do |format|
      if @chapxi.save
        format.html { redirect_to @chapxi, notice: 'Chapxi was successfully created.' }
        format.json { render :show, status: :created, location: @chapxi }
      else
        format.html { render :new }
        format.json { render json: @chapxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxis/1
  # PATCH/PUT /chapxis/1.json
  def update
    respond_to do |format|
      if @chapxi.update(chapxi_params)
        format.html { redirect_to @chapxi, notice: 'Chapxi was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxi }
      else
        format.html { render :edit }
        format.json { render json: @chapxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxis/1
  # DELETE /chapxis/1.json
  def destroy
    @chapxi.destroy
    respond_to do |format|
      format.html { redirect_to chapxis_url, notice: 'Chapxi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxi
      @chapxi = Chapxi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxi_params
      params.require(:chapxi).permit(:section_number, :crime, :law, :search)
    end
end
