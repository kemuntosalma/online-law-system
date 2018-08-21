class ChapxxisController < ApplicationController
  before_action :set_chapxxi, only: [:show, :edit, :update, :destroy]

  # GET /chapxxis
  # GET /chapxxis.json
  def index
    if params[:search]

      @chapxxis = Chapxxi.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxis = Chapxxi.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxis = Chapxxi.all
  
    end
  end

  # GET /chapxxis/1
  # GET /chapxxis/1.json
  def show
  end

  # GET /chapxxis/new
  def new
    @chapxxi = Chapxxi.new
  end

  # GET /chapxxis/1/edit
  def edit
  end

  # POST /chapxxis
  # POST /chapxxis.json
  def create
    @chapxxi = Chapxxi.new(chapxxi_params)

    respond_to do |format|
      if @chapxxi.save
        format.html { redirect_to @chapxxi, notice: 'Chapxxi was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxi }
      else
        format.html { render :new }
        format.json { render json: @chapxxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxis/1
  # PATCH/PUT /chapxxis/1.json
  def update
    respond_to do |format|
      if @chapxxi.update(chapxxi_params)
        format.html { redirect_to @chapxxi, notice: 'Chapxxi was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxi }
      else
        format.html { render :edit }
        format.json { render json: @chapxxi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxis/1
  # DELETE /chapxxis/1.json
  def destroy
    @chapxxi.destroy
    respond_to do |format|
      format.html { redirect_to chapxxis_url, notice: 'Chapxxi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxi
      @chapxxi = Chapxxi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxi_params
      params.require(:chapxxi).permit(:section_number, :crime, :law, :search)
    end
end
