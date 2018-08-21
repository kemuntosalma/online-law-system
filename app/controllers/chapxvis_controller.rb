class ChapxvisController < ApplicationController
  before_action :set_chapxvi, only: [:show, :edit, :update, :destroy]

  # GET /chapxvis
  # GET /chapxvis.json
  def index
    if params[:search]

      @chapxvis = Chapxvi.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxvis = Chapxvi.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxvis = Chapxvi.all
  
    end
  end

  # GET /chapxvis/1
  # GET /chapxvis/1.json
  def show
  end

  # GET /chapxvis/new
  def new
    @chapxvi = Chapxvi.new
  end

  # GET /chapxvis/1/edit
  def edit
  end

  # POST /chapxvis
  # POST /chapxvis.json
  def create
    @chapxvi = Chapxvi.new(chapxvi_params)

    respond_to do |format|
      if @chapxvi.save
        format.html { redirect_to @chapxvi, notice: 'Chapxvi was successfully created.' }
        format.json { render :show, status: :created, location: @chapxvi }
      else
        format.html { render :new }
        format.json { render json: @chapxvi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxvis/1
  # PATCH/PUT /chapxvis/1.json
  def update
    respond_to do |format|
      if @chapxvi.update(chapxvi_params)
        format.html { redirect_to @chapxvi, notice: 'Chapxvi was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxvi }
      else
        format.html { render :edit }
        format.json { render json: @chapxvi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxvis/1
  # DELETE /chapxvis/1.json
  def destroy
    @chapxvi.destroy
    respond_to do |format|
      format.html { redirect_to chapxvis_url, notice: 'Chapxvi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxvi
      @chapxvi = Chapxvi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxvi_params
      params.require(:chapxvi).permit(:section_number, :crime, :law, :search)
    end
end
