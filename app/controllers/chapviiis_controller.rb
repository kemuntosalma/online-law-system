class ChapviiisController < ApplicationController
  before_action :set_chapviii, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /chapviiis
  # GET /chapviiis.json
  def index
    @chapviiis = Chapviii.all
  end

  # GET /chapviiis/1
  # GET /chapviiis/1.json
  def show
  end

  # GET /chapviiis/new
  def new
    @chapviii = Chapviii.new
  end

  # GET /chapviiis/1/edit
  def edit
  end

  # POST /chapviiis
  # POST /chapviiis.json
  def create
    @chapviii = Chapviii.new(chapviii_params)
    @chapviii.user = current_user

    respond_to do |format|
      if @chapviii.save
        format.html { redirect_to @chapviii, notice: 'Chapviii was successfully created.' }
        format.json { render :show, status: :created, location: @chapviii }
      else
        format.html { render :new }
        format.json { render json: @chapviii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapviiis/1
  # PATCH/PUT /chapviiis/1.json
  def update
    respond_to do |format|
      if @chapviii.update(chapviii_params)
        format.html { redirect_to @chapviii, notice: 'Chapviii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapviii }
      else
        format.html { render :edit }
        format.json { render json: @chapviii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapviiis/1
  # DELETE /chapviiis/1.json
  def destroy
    @chapviii.destroy
    respond_to do |format|
      format.html { redirect_to chapviiis_url, notice: 'Chapviii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapviii
      @chapviii = Chapviii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapviii_params
      params.require(:chapviii).permit(:section_number, :crime, :law)
    end
end
