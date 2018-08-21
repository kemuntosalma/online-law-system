class ChapxxvsController < ApplicationController
  before_action :set_chapxxv, only: [:show, :edit, :update, :destroy]

  # GET /chapxxvs
  # GET /chapxxvs.json
  def index
    if params[:search]

      @chapxxvs = Chapxxv.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxvs = Chapxxv.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxvs = Chapxxv.all
  
    end
  end

  # GET /chapxxvs/1
  # GET /chapxxvs/1.json
  def show
  end

  # GET /chapxxvs/new
  def new
    @chapxxv = Chapxxv.new
  end

  # GET /chapxxvs/1/edit
  def edit
  end

  # POST /chapxxvs
  # POST /chapxxvs.json
  def create
    @chapxxv = Chapxxv.new(chapxxv_params)

    respond_to do |format|
      if @chapxxv.save
        format.html { redirect_to @chapxxv, notice: 'Chapxxv was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxv }
      else
        format.html { render :new }
        format.json { render json: @chapxxv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxvs/1
  # PATCH/PUT /chapxxvs/1.json
  def update
    respond_to do |format|
      if @chapxxv.update(chapxxv_params)
        format.html { redirect_to @chapxxv, notice: 'Chapxxv was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxv }
      else
        format.html { render :edit }
        format.json { render json: @chapxxv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxvs/1
  # DELETE /chapxxvs/1.json
  def destroy
    @chapxxv.destroy
    respond_to do |format|
      format.html { redirect_to chapxxvs_url, notice: 'Chapxxv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxv
      @chapxxv = Chapxxv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxv_params
      params.require(:chapxxv).permit(:section_number, :crime, :law, :search)
    end
end
