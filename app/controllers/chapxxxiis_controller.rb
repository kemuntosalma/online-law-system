class ChapxxxiisController < ApplicationController
  before_action :set_chapxxxii, only: [:show, :edit, :update, :destroy]

  # GET /chapxxxiis
  # GET /chapxxxiis.json
  def index
    @chapxxxiis = Chapxxxii.all
  end

  # GET /chapxxxiis/1
  # GET /chapxxxiis/1.json
  def show
  end

  # GET /chapxxxiis/new
  def new
    @chapxxxii = Chapxxxii.new
  end

  # GET /chapxxxiis/1/edit
  def edit
  end

  # POST /chapxxxiis
  # POST /chapxxxiis.json
  def create
    @chapxxxii = Chapxxxii.new(chapxxxii_params)

    respond_to do |format|
      if @chapxxxii.save
        format.html { redirect_to @chapxxxii, notice: 'Chapxxxii was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxxii }
      else
        format.html { render :new }
        format.json { render json: @chapxxxii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxxiis/1
  # PATCH/PUT /chapxxxiis/1.json
  def update
    respond_to do |format|
      if @chapxxxii.update(chapxxxii_params)
        format.html { redirect_to @chapxxxii, notice: 'Chapxxxii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxxii }
      else
        format.html { render :edit }
        format.json { render json: @chapxxxii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxxiis/1
  # DELETE /chapxxxiis/1.json
  def destroy
    @chapxxxii.destroy
    respond_to do |format|
      format.html { redirect_to chapxxxiis_url, notice: 'Chapxxxii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxxii
      @chapxxxii = Chapxxxii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxxii_params
      params.require(:chapxxxii).permit(:section_number, :crime, :law)
    end
end
