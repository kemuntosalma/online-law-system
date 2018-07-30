class ChapvixesController < ApplicationController
  before_action :set_chapvix, only: [:show, :edit, :update, :destroy]

  # GET /chapvixes
  # GET /chapvixes.json
  def index
    @chapvixes = Chapvix.all
  end

  # GET /chapvixes/1
  # GET /chapvixes/1.json
  def show
  end

  # GET /chapvixes/new
  def new
    @chapvix = Chapvix.new
  end

  # GET /chapvixes/1/edit
  def edit
  end

  # POST /chapvixes
  # POST /chapvixes.json
  def create
    @chapvix = Chapvix.new(chapvix_params)

    respond_to do |format|
      if @chapvix.save
        format.html { redirect_to @chapvix, notice: 'Chapvix was successfully created.' }
        format.json { render :show, status: :created, location: @chapvix }
      else
        format.html { render :new }
        format.json { render json: @chapvix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapvixes/1
  # PATCH/PUT /chapvixes/1.json
  def update
    respond_to do |format|
      if @chapvix.update(chapvix_params)
        format.html { redirect_to @chapvix, notice: 'Chapvix was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapvix }
      else
        format.html { render :edit }
        format.json { render json: @chapvix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapvixes/1
  # DELETE /chapvixes/1.json
  def destroy
    @chapvix.destroy
    respond_to do |format|
      format.html { redirect_to chapvixes_url, notice: 'Chapvix was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapvix
      @chapvix = Chapvix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapvix_params
      params.require(:chapvix).permit(:section_number, :crime, :law)
    end
end
