class ChapxxxivsController < ApplicationController
  before_action :set_chapxxxiv, only: [:show, :edit, :update, :destroy]

  # GET /chapxxxivs
  # GET /chapxxxivs.json
  def index
    if params[:search]

      @chapxxxivs = Chapxxxiv.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxxivs = Chapxxxiv.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxxivs = Chapxxxiv.all
  
    end
  end

  # GET /chapxxxivs/1
  # GET /chapxxxivs/1.json
  def show
  end

  # GET /chapxxxivs/new
  def new
    @chapxxxiv = Chapxxxiv.new
  end

  # GET /chapxxxivs/1/edit
  def edit
  end

  # POST /chapxxxivs
  # POST /chapxxxivs.json
  def create
    @chapxxxiv = Chapxxxiv.new(chapxxxiv_params)

    respond_to do |format|
      if @chapxxxiv.save
        format.html { redirect_to @chapxxxiv, notice: 'Chapxxxiv was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxxiv }
      else
        format.html { render :new }
        format.json { render json: @chapxxxiv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxxivs/1
  # PATCH/PUT /chapxxxivs/1.json
  def update
    respond_to do |format|
      if @chapxxxiv.update(chapxxxiv_params)
        format.html { redirect_to @chapxxxiv, notice: 'Chapxxxiv was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxxiv }
      else
        format.html { render :edit }
        format.json { render json: @chapxxxiv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxxivs/1
  # DELETE /chapxxxivs/1.json
  def destroy
    @chapxxxiv.destroy
    respond_to do |format|
      format.html { redirect_to chapxxxivs_url, notice: 'Chapxxxiv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxxiv
      @chapxxxiv = Chapxxxiv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxxiv_params
      params.require(:chapxxxiv).permit(:section_number, :crime, :law, :search)
    end
end
