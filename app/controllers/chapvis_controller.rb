class ChapvisController < ApplicationController
  before_action :set_chapvi, only: [:show, :edit, :update, :destroy]
  # GET /chapvis
  # GET /chapvis.json
  def index
    if params[:search]

      @chapvis = Chapvi.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapvis = Chapvi.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapvis = Chapvi.all
  
    end
  end
  # GET /chapvis/1
  # GET /chapvis/1.json
  def show
  end

  # GET /chapvis/new
  def new
    @chapvi = Chapvi.new
  end

  # GET /chapvis/1/edit
  def edit
  end

  # POST /chapvis
  # POST /chapvis.json
  def create
    @chapvi = Chapvi.new(chapvi_params)
   
    respond_to do |format|
      if @chapvi.save
        format.html { redirect_to @chapvi, notice: 'Chapvi was successfully created.' }
        format.json { render :show, status: :created, location: @chapvi }
      else
        format.html { render :new }
        format.json { render json: @chapvi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapvis/1
  # PATCH/PUT /chapvis/1.json
  def update
    respond_to do |format|
      if @chapvi.update(chapvi_params)
        format.html { redirect_to @chapvi, notice: 'Chapvi was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapvi }
      else
        format.html { render :edit }
        format.json { render json: @chapvi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapvis/1
  # DELETE /chapvis/1.json
  def destroy
    @chapvi.destroy
    respond_to do |format|
      format.html { redirect_to chapvis_url, notice: 'Chapvi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapvi
      @chapvi = Chapvi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapvi_params
      params.require(:chapvi).permit(:section_number, :crime, :law, :search)
    end
end
