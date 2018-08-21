class ChapxxxixesController < ApplicationController
  before_action :set_chapxxxix, only: [:show, :edit, :update, :destroy]

  # GET /chapxxxixes
  # GET /chapxxxixes.json
  def index
    if params[:search]

      @chapxxxixes = Chapxxxix.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxxixes = Chapxxxix.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxxixes = Chapxxxix.all
  
    end
  end
  # GET /chapxxxixes/1
  # GET /chapxxxixes/1.json
  def show
  end

  # GET /chapxxxixes/new
  def new
    @chapxxxix = Chapxxxix.new
  end

  # GET /chapxxxixes/1/edit
  def edit
  end

  # POST /chapxxxixes
  # POST /chapxxxixes.json
  def create
    @chapxxxix = Chapxxxix.new(chapxxxix_params)

    respond_to do |format|
      if @chapxxxix.save
        format.html { redirect_to @chapxxxix, notice: 'Chapxxxix was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxxix }
      else
        format.html { render :new }
        format.json { render json: @chapxxxix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxxixes/1
  # PATCH/PUT /chapxxxixes/1.json
  def update
    respond_to do |format|
      if @chapxxxix.update(chapxxxix_params)
        format.html { redirect_to @chapxxxix, notice: 'Chapxxxix was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxxix }
      else
        format.html { render :edit }
        format.json { render json: @chapxxxix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxxixes/1
  # DELETE /chapxxxixes/1.json
  def destroy
    @chapxxxix.destroy
    respond_to do |format|
      format.html { redirect_to chapxxxixes_url, notice: 'Chapxxxix was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxxix
      @chapxxxix = Chapxxxix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxxix_params
      params.require(:chapxxxix).permit(:section_number, :crime, :law, :search)
    end
end
