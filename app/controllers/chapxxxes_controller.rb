class ChapxxxesController < ApplicationController
  before_action :set_chapxxx, only: [:show, :edit, :update, :destroy]

  # GET /chapxxxes
  # GET /chapxxxes.json
  def index
    if params[:search]

      @chapxxxes = Chapxxx.where(["law LIKE  ?","%#{params[:search]}%"])
      @chapxxxes = Chapxxx.where(["crime LIKE  ?","%#{params[:search]}%"])


  
    else
      @chapxxxes = Chapxxx.all
  
    end
  end
  # GET /chapxxxes/1
  # GET /chapxxxes/1.json
  def show
  end

  # GET /chapxxxes/new
  def new
    @chapxxx = Chapxxx.new
  end

  # GET /chapxxxes/1/edit
  def edit
  end

  # POST /chapxxxes
  # POST /chapxxxes.json
  def create
    @chapxxx = Chapxxx.new(chapxxx_params)

    respond_to do |format|
      if @chapxxx.save
        format.html { redirect_to @chapxxx, notice: 'Chapxxx was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxx }
      else
        format.html { render :new }
        format.json { render json: @chapxxx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxxes/1
  # PATCH/PUT /chapxxxes/1.json
  def update
    respond_to do |format|
      if @chapxxx.update(chapxxx_params)
        format.html { redirect_to @chapxxx, notice: 'Chapxxx was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxx }
      else
        format.html { render :edit }
        format.json { render json: @chapxxx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxxes/1
  # DELETE /chapxxxes/1.json
  def destroy
    @chapxxx.destroy
    respond_to do |format|
      format.html { redirect_to chapxxxes_url, notice: 'Chapxxx was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxx
      @chapxxx = Chapxxx.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxx_params
      params.require(:chapxxx).permit(:section_number, :crime, :law, :search)
    end
end
