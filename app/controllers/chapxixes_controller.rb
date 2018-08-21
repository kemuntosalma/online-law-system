class ChapxixesController < ApplicationController
  before_action :set_chapxix, only: [:show, :edit, :update, :destroy]

  # GET /chapxixes
  # GET /chapxixes.json
  def index
    if params[:search]

      @chapxixes = Chapxix.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxixes = Chapxix.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxixes = Chapxix.all
  
    end
  end

  # GET /chapxixes/1
  # GET /chapxixes/1.json
  def show
  end

  # GET /chapxixes/new
  def new
    @chapxix = Chapxix.new
  end

  # GET /chapxixes/1/edit
  def edit
  end

  # POST /chapxixes
  # POST /chapxixes.json
  def create
    @chapxix = Chapxix.new(chapxix_params)

    respond_to do |format|
      if @chapxix.save
        format.html { redirect_to @chapxix, notice: 'Chapxix was successfully created.' }
        format.json { render :show, status: :created, location: @chapxix }
      else
        format.html { render :new }
        format.json { render json: @chapxix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxixes/1
  # PATCH/PUT /chapxixes/1.json
  def update
    respond_to do |format|
      if @chapxix.update(chapxix_params)
        format.html { redirect_to @chapxix, notice: 'Chapxix was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxix }
      else
        format.html { render :edit }
        format.json { render json: @chapxix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxixes/1
  # DELETE /chapxixes/1.json
  def destroy
    @chapxix.destroy
    respond_to do |format|
      format.html { redirect_to chapxixes_url, notice: 'Chapxix was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxix
      @chapxix = Chapxix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxix_params
      params.require(:chapxix).permit(:section_number, :crime, :law, :search)
    end
end
