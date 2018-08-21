class ChapxxxiiisController < ApplicationController
  before_action :set_chapxxxiii, only: [:show, :edit, :update, :destroy]

  # GET /chapxxxiiis
  # GET /chapxxxiiis.json
  def index
    if params[:search]

      @chapxxxiiis = Chapxxxiii.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxxiiis = Chapxxxiii.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxxiiis = Chapxxxiii.all
  
    end
  end

  # GET /chapxxxiiis/1
  # GET /chapxxxiiis/1.json
  def show
  end

  # GET /chapxxxiiis/new
  def new
    @chapxxxiii = Chapxxxiii.new
  end

  # GET /chapxxxiiis/1/edit
  def edit
  end

  # POST /chapxxxiiis
  # POST /chapxxxiiis.json
  def create
    @chapxxxiii = Chapxxxiii.new(chapxxxiii_params)

    respond_to do |format|
      if @chapxxxiii.save
        format.html { redirect_to @chapxxxiii, notice: 'Chapxxxiii was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxxiii }
      else
        format.html { render :new }
        format.json { render json: @chapxxxiii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxxiiis/1
  # PATCH/PUT /chapxxxiiis/1.json
  def update
    respond_to do |format|
      if @chapxxxiii.update(chapxxxiii_params)
        format.html { redirect_to @chapxxxiii, notice: 'Chapxxxiii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxxiii }
      else
        format.html { render :edit }
        format.json { render json: @chapxxxiii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxxiiis/1
  # DELETE /chapxxxiiis/1.json
  def destroy
    @chapxxxiii.destroy
    respond_to do |format|
      format.html { redirect_to chapxxxiiis_url, notice: 'Chapxxxiii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxxiii
      @chapxxxiii = Chapxxxiii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxxiii_params
      params.require(:chapxxxiii).permit(:section_number, :crime, :law,:search)
    end
end
