class ChapxvsController < ApplicationController
  before_action :set_chapxv, only: [:show, :edit, :update, :destroy]

  # GET /chapxvs
  # GET /chapxvs.json
  def index
    if params[:search]

      @chapxvs = Chapxv.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxvs = Chapxv.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxvs = Chapxv.all
  
    end
  end

  # GET /chapxvs/1
  # GET /chapxvs/1.json
  def show
  end

  # GET /chapxvs/new
  def new
    @chapxv = Chapxv.new
  end

  # GET /chapxvs/1/edit
  def edit
  end

  # POST /chapxvs
  # POST /chapxvs.json
  def create
    @chapxv = Chapxv.new(chapxv_params)

    respond_to do |format|
      if @chapxv.save
        format.html { redirect_to @chapxv, notice: 'Chapxv was successfully created.' }
        format.json { render :show, status: :created, location: @chapxv }
      else
        format.html { render :new }
        format.json { render json: @chapxv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxvs/1
  # PATCH/PUT /chapxvs/1.json
  def update
    respond_to do |format|
      if @chapxv.update(chapxv_params)
        format.html { redirect_to @chapxv, notice: 'Chapxv was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxv }
      else
        format.html { render :edit }
        format.json { render json: @chapxv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxvs/1
  # DELETE /chapxvs/1.json
  def destroy
    @chapxv.destroy
    respond_to do |format|
      format.html { redirect_to chapxvs_url, notice: 'Chapxv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxv
      @chapxv = Chapxv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxv_params
      params.require(:chapxv).permit(:section_number, :crime, :law, :search)
    end
end
