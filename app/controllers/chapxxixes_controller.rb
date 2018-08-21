class ChapxxixesController < ApplicationController
  before_action :set_chapxxix, only: [:show, :edit, :update, :destroy]

  # GET /chapxxixes
  # GET /chapxxixes.json
  def index
    if params[:search]

      @chapxxixes = Chapxxix.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxixes = Chapxxix.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxixes = Chapxxix.all
  
    end
  end
  # GET /chapxxixes/1
  # GET /chapxxixes/1.json
  def show
  end

  # GET /chapxxixes/new
  def new
    @chapxxix = Chapxxix.new
  end

  # GET /chapxxixes/1/edit
  def edit
  end

  # POST /chapxxixes
  # POST /chapxxixes.json
  def create
    @chapxxix = Chapxxix.new(chapxxix_params)

    respond_to do |format|
      if @chapxxix.save
        format.html { redirect_to @chapxxix, notice: 'Chapxxix was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxix }
      else
        format.html { render :new }
        format.json { render json: @chapxxix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxixes/1
  # PATCH/PUT /chapxxixes/1.json
  def update
    respond_to do |format|
      if @chapxxix.update(chapxxix_params)
        format.html { redirect_to @chapxxix, notice: 'Chapxxix was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxix }
      else
        format.html { render :edit }
        format.json { render json: @chapxxix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxixes/1
  # DELETE /chapxxixes/1.json
  def destroy
    @chapxxix.destroy
    respond_to do |format|
      format.html { redirect_to chapxxixes_url, notice: 'Chapxxix was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxix
      @chapxxix = Chapxxix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxix_params
      params.require(:chapxxix).permit(:section_number, :crime, :law, :search)
    end
end
