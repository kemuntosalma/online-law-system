class ChapxviiisController < ApplicationController
  before_action :set_chapxviii, only: [:show, :edit, :update, :destroy]

  # GET /chapxviiis
  # GET /chapxviiis.json
  def index
    if params[:search]

      @chapxviiis = Chapxviii.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxviiis = Chapxviii.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chaxpxviiis = Chapxviii.all
  
    end
  end

  # GET /chapxviiis/1
  # GET /chapxviiis/1.json
  def show
  end

  # GET /chapxviiis/new
  def new
    @chapxviii = Chapxviii.new
  end

  # GET /chapxviiis/1/edit
  def edit
  end

  # POST /chapxviiis
  # POST /chapxviiis.json
  def create
    @chapxviii = Chapxviii.new(chapxviii_params)

    respond_to do |format|
      if @chapxviii.save
        format.html { redirect_to @chapxviii, notice: 'Chapxviii was successfully created.' }
        format.json { render :show, status: :created, location: @chapxviii }
      else
        format.html { render :new }
        format.json { render json: @chapxviii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxviiis/1
  # PATCH/PUT /chapxviiis/1.json
  def update
    respond_to do |format|
      if @chapxviii.update(chapxviii_params)
        format.html { redirect_to @chapxviii, notice: 'Chapxviii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxviii }
      else
        format.html { render :edit }
        format.json { render json: @chapxviii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxviiis/1
  # DELETE /chapxviiis/1.json
  def destroy
    @chapxviii.destroy
    respond_to do |format|
      format.html { redirect_to chapxviiis_url, notice: 'Chapxviii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxviii
      @chapxviii = Chapxviii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxviii_params
      params.require(:chapxviii).permit(:section_number, :crime, :law, :search)
    end
end
