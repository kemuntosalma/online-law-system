class ChapxxxvisController < ApplicationController
  before_action :set_chapxxxvi, only: [:show, :edit, :update, :destroy]

  # GET /chapxxxvis
  # GET /chapxxxvis.json
  def index
    if params[:search]

      @chapxxxvis = Chapxxxvi.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxxvis = Chapxxxvi.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxxvis = Chapxxxvi.all
  
    end
  end

  # GET /chapxxxvis/1
  # GET /chapxxxvis/1.json
  def show
  end

  # GET /chapxxxvis/new
  def new
    @chapxxxvi = Chapxxxvi.new
  end

  # GET /chapxxxvis/1/edit
  def edit
  end

  # POST /chapxxxvis
  # POST /chapxxxvis.json
  def create
    @chapxxxvi = Chapxxxvi.new(chapxxxvi_params)

    respond_to do |format|
      if @chapxxxvi.save
        format.html { redirect_to @chapxxxvi, notice: 'Chapxxxvi was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxxvi }
      else
        format.html { render :new }
        format.json { render json: @chapxxxvi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxxvis/1
  # PATCH/PUT /chapxxxvis/1.json
  def update
    respond_to do |format|
      if @chapxxxvi.update(chapxxxvi_params)
        format.html { redirect_to @chapxxxvi, notice: 'Chapxxxvi was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxxvi }
      else
        format.html { render :edit }
        format.json { render json: @chapxxxvi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxxvis/1
  # DELETE /chapxxxvis/1.json
  def destroy
    @chapxxxvi.destroy
    respond_to do |format|
      format.html { redirect_to chapxxxvis_url, notice: 'Chapxxxvi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxxvi
      @chapxxxvi = Chapxxxvi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxxvi_params
      params.require(:chapxxxvi).permit(:section_number, :crime, :law, :search )
    end
end
