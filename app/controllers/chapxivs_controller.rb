class ChapxivsController < ApplicationController
  before_action :set_chapxiv, only: [:show, :edit, :update, :destroy]

  # GET /chapxivs
  # GET /chapxivs.json
  def index
    if params[:search]

      @chapxivs = Chapxiv.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxivs = Chapxiv.where(["crime LIKE  ?","%#{params[:search]}%"])



    else
      @chapxivs = Chapxiv.all
  
    end
  end

  # GET /chapxivs/1
  # GET /chapxivs/1.json
  def show
  end

  # GET /chapxivs/new
  def new
    @chapxiv = Chapxiv.new
  end

  # GET /chapxivs/1/edit
  def edit
  end

  # POST /chapxivs
  # POST /chapxivs.json
  def create
    @chapxiv = Chapxiv.new(chapxiv_params)

    respond_to do |format|
      if @chapxiv.save
        format.html { redirect_to @chapxiv, notice: 'Chapxiv was successfully created.' }
        format.json { render :show, status: :created, location: @chapxiv }
      else
        format.html { render :new }
        format.json { render json: @chapxiv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxivs/1
  # PATCH/PUT /chapxivs/1.json
  def update
    respond_to do |format|
      if @chapxiv.update(chapxiv_params)
        format.html { redirect_to @chapxiv, notice: 'Chapxiv was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxiv }
      else
        format.html { render :edit }
        format.json { render json: @chapxiv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxivs/1
  # DELETE /chapxivs/1.json
  def destroy
    @chapxiv.destroy
    respond_to do |format|
      format.html { redirect_to chapxivs_url, notice: 'Chapxiv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxiv
      @chapxiv = Chapxiv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxiv_params
      params.require(:chapxiv).permit(:section_number, :crime, :law, :search)
    end
end
