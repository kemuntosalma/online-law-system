class ChapxxxviiisController < ApplicationController
  before_action :set_chapxxxviii, only: [:show, :edit, :update, :destroy]

  # GET /chapxxxviiis
  # GET /chapxxxviiis.json
  def index
    if params[:search]

      @chapxxxviiis = Chapxxxviii.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxxviiis = Chapxxxviii.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxxviiis = Chapxxxviii.all
  
    end
  end
  # GET /chapxxxviiis/1
  # GET /chapxxxviiis/1.json
  def show
  end

  # GET /chapxxxviiis/new
  def new
    @chapxxxviii = Chapxxxviii.new
  end

  # GET /chapxxxviiis/1/edit
  def edit
  end

  # POST /chapxxxviiis
  # POST /chapxxxviiis.json
  def create
    @chapxxxviii = Chapxxxviii.new(chapxxxviii_params)

    respond_to do |format|
      if @chapxxxviii.save
        format.html { redirect_to @chapxxxviii, notice: 'Chapxxxviii was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxxviii }
      else
        format.html { render :new }
        format.json { render json: @chapxxxviii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxxviiis/1
  # PATCH/PUT /chapxxxviiis/1.json
  def update
    respond_to do |format|
      if @chapxxxviii.update(chapxxxviii_params)
        format.html { redirect_to @chapxxxviii, notice: 'Chapxxxviii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxxviii }
      else
        format.html { render :edit }
        format.json { render json: @chapxxxviii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxxviiis/1
  # DELETE /chapxxxviiis/1.json
  def destroy
    @chapxxxviii.destroy
    respond_to do |format|
      format.html { redirect_to chapxxxviiis_url, notice: 'Chapxxxviii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxxviii
      @chapxxxviii = Chapxxxviii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxxviii_params
      params.require(:chapxxxviii).permit(:section_number, :crime, :law, :search)
    end
end
