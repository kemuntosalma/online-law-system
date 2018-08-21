class ChapxxivsController < ApplicationController
  before_action :set_chapxxiv, only: [:show, :edit, :update, :destroy]

  # GET /chapxxivs
  # GET /chapxxivs.json
  def index
    if params[:search]

      @chapxxivs = Chapxxiv.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxivs = Chapxxiv.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxivs = Chapxxiv.all
  
    end
  end

  # GET /chapxxivs/1
  # GET /chapxxivs/1.json
  def show
  end

  # GET /chapxxivs/new
  def new
    @chapxxiv = Chapxxiv.new
  end

  # GET /chapxxivs/1/edit
  def edit
  end

  # POST /chapxxivs
  # POST /chapxxivs.json
  def create
    @chapxxiv = Chapxxiv.new(chapxxiv_params)

    respond_to do |format|
      if @chapxxiv.save
        format.html { redirect_to @chapxxiv, notice: 'Chapxxiv was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxiv }
      else
        format.html { render :new }
        format.json { render json: @chapxxiv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxivs/1
  # PATCH/PUT /chapxxivs/1.json
  def update
    respond_to do |format|
      if @chapxxiv.update(chapxxiv_params)
        format.html { redirect_to @chapxxiv, notice: 'Chapxxiv was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxiv }
      else
        format.html { render :edit }
        format.json { render json: @chapxxiv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxivs/1
  # DELETE /chapxxivs/1.json
  def destroy
    @chapxxiv.destroy
    respond_to do |format|
      format.html { redirect_to chapxxivs_url, notice: 'Chapxxiv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxiv
      @chapxxiv = Chapxxiv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxiv_params
      params.require(:chapxxiv).permit(:section_number, :crime, :law, :search)
    end
end
