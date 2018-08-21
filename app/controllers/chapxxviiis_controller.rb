class ChapxxviiisController < ApplicationController
  before_action :set_chapxxviii, only: [:show, :edit, :update, :destroy]

  # GET /chapxxviiis
  # GET /chapxxviiis.json
  def index
    if params[:search]

      @chapxxviiis = Chapxxviii.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxviiis = Chapxxviii.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxviiis = Chapxxviii.all
  
    end
  end
  # GET /chapxxviiis/1
  # GET /chapxxviiis/1.json
  def show
  end

  # GET /chapxxviiis/new
  def new
    @chapxxviii = Chapxxviii.new
  end

  # GET /chapxxviiis/1/edit
  def edit
  end

  # POST /chapxxviiis
  # POST /chapxxviiis.json
  def create
    @chapxxviii = Chapxxviii.new(chapxxviii_params)

    respond_to do |format|
      if @chapxxviii.save
        format.html { redirect_to @chapxxviii, notice: 'Chapxxviii was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxviii }
      else
        format.html { render :new }
        format.json { render json: @chapxxviii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxviiis/1
  # PATCH/PUT /chapxxviiis/1.json
  def update
    respond_to do |format|
      if @chapxxviii.update(chapxxviii_params)
        format.html { redirect_to @chapxxviii, notice: 'Chapxxviii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxviii }
      else
        format.html { render :edit }
        format.json { render json: @chapxxviii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxviiis/1
  # DELETE /chapxxviiis/1.json
  def destroy
    @chapxxviii.destroy
    respond_to do |format|
      format.html { redirect_to chapxxviiis_url, notice: 'Chapxxviii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxviii
      @chapxxviii = Chapxxviii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxviii_params
      params.require(:chapxxviii).permit(:section_number, :crime, :law, :search)
    end
end
