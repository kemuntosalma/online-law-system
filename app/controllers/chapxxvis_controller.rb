class ChapxxvisController < ApplicationController
  before_action :set_chapxxvi, only: [:show, :edit, :update, :destroy]

  # GET /chapxxvis
  # GET /chapxxvis.json
  def index
    if params[:search]

      @chapxxvis = Chapxxvi.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxvis = Chapxxvi.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxvis = Chapxxvi.all
  
    end
  end

  # GET /chapxxvis/1
  # GET /chapxxvis/1.json
  def show
  end

  # GET /chapxxvis/new
  def new
    @chapxxvi = Chapxxvi.new
  end

  # GET /chapxxvis/1/edit
  def edit
  end

  # POST /chapxxvis
  # POST /chapxxvis.json
  def create
    @chapxxvi = Chapxxvi.new(chapxxvi_params)

    respond_to do |format|
      if @chapxxvi.save
        format.html { redirect_to @chapxxvi, notice: 'Chapxxvi was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxvi }
      else
        format.html { render :new }
        format.json { render json: @chapxxvi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxvis/1
  # PATCH/PUT /chapxxvis/1.json
  def update
    respond_to do |format|
      if @chapxxvi.update(chapxxvi_params)
        format.html { redirect_to @chapxxvi, notice: 'Chapxxvi was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxvi }
      else
        format.html { render :edit }
        format.json { render json: @chapxxvi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxvis/1
  # DELETE /chapxxvis/1.json
  def destroy
    @chapxxvi.destroy
    respond_to do |format|
      format.html { redirect_to chapxxvis_url, notice: 'Chapxxvi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxvi
      @chapxxvi = Chapxxvi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxvi_params
      params.require(:chapxxvi).permit(:section_number, :crime, :law, :search)
    end
end
