class ChapxxiiisController < ApplicationController
  before_action :set_chapxxiii, only: [:show, :edit, :update, :destroy]

  # GET /chapxxiiis
  # GET /chapxxiiis.json
  def index
    @chapxxiiis = Chapxxiii.all
  end

  # GET /chapxxiiis/1
  # GET /chapxxiiis/1.json
  def show
  end

  # GET /chapxxiiis/new
  def new
    @chapxxiii = Chapxxiii.new
  end

  # GET /chapxxiiis/1/edit
  def edit
  end

  # POST /chapxxiiis
  # POST /chapxxiiis.json
  def create
    @chapxxiii = Chapxxiii.new(chapxxiii_params)

    respond_to do |format|
      if @chapxxiii.save
        format.html { redirect_to @chapxxiii, notice: 'Chapxxiii was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxiii }
      else
        format.html { render :new }
        format.json { render json: @chapxxiii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxiiis/1
  # PATCH/PUT /chapxxiiis/1.json
  def update
    respond_to do |format|
      if @chapxxiii.update(chapxxiii_params)
        format.html { redirect_to @chapxxiii, notice: 'Chapxxiii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxiii }
      else
        format.html { render :edit }
        format.json { render json: @chapxxiii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxiiis/1
  # DELETE /chapxxiiis/1.json
  def destroy
    @chapxxiii.destroy
    respond_to do |format|
      format.html { redirect_to chapxxiiis_url, notice: 'Chapxxiii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxiii
      @chapxxiii = Chapxxiii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxiii_params
      params.require(:chapxxiii).permit(:section_number, :crime, :law)
    end
end
