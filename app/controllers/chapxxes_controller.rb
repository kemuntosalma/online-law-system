class ChapxxesController < ApplicationController
  before_action :set_chapxx, only: [:show, :edit, :update, :destroy]

  # GET /chapxxes
  # GET /chapxxes.json
  def index
    @chapxxes = Chapxx.all
  end

  # GET /chapxxes/1
  # GET /chapxxes/1.json
  def show
  end

  # GET /chapxxes/new
  def new
    @chapxx = Chapxx.new
  end

  # GET /chapxxes/1/edit
  def edit
  end

  # POST /chapxxes
  # POST /chapxxes.json
  def create
    @chapxx = Chapxx.new(chapxx_params)

    respond_to do |format|
      if @chapxx.save
        format.html { redirect_to @chapxx, notice: 'Chapxx was successfully created.' }
        format.json { render :show, status: :created, location: @chapxx }
      else
        format.html { render :new }
        format.json { render json: @chapxx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxes/1
  # PATCH/PUT /chapxxes/1.json
  def update
    respond_to do |format|
      if @chapxx.update(chapxx_params)
        format.html { redirect_to @chapxx, notice: 'Chapxx was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxx }
      else
        format.html { render :edit }
        format.json { render json: @chapxx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxes/1
  # DELETE /chapxxes/1.json
  def destroy
    @chapxx.destroy
    respond_to do |format|
      format.html { redirect_to chapxxes_url, notice: 'Chapxx was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxx
      @chapxx = Chapxx.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxx_params
      params.require(:chapxx).permit(:section_number, :crime, :law)
    end
end
