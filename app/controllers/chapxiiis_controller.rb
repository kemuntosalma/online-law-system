class ChapxiiisController < ApplicationController
  before_action :set_chapxiii, only: [:show, :edit, :update, :destroy]

  # GET /chapxiiis
  # GET /chapxiiis.json
  def index
    @chapxiiis = Chapxiii.all
  end

  # GET /chapxiiis/1
  # GET /chapxiiis/1.json
  def show
  end

  # GET /chapxiiis/new
  def new
    @chapxiii = Chapxiii.new
  end

  # GET /chapxiiis/1/edit
  def edit
  end

  # POST /chapxiiis
  # POST /chapxiiis.json
  def create
    @chapxiii = Chapxiii.new(chapxiii_params)

    respond_to do |format|
      if @chapxiii.save
        format.html { redirect_to @chapxiii, notice: 'Chapxiii was successfully created.' }
        format.json { render :show, status: :created, location: @chapxiii }
      else
        format.html { render :new }
        format.json { render json: @chapxiii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxiiis/1
  # PATCH/PUT /chapxiiis/1.json
  def update
    respond_to do |format|
      if @chapxiii.update(chapxiii_params)
        format.html { redirect_to @chapxiii, notice: 'Chapxiii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxiii }
      else
        format.html { render :edit }
        format.json { render json: @chapxiii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxiiis/1
  # DELETE /chapxiiis/1.json
  def destroy
    @chapxiii.destroy
    respond_to do |format|
      format.html { redirect_to chapxiiis_url, notice: 'Chapxiii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxiii
      @chapxiii = Chapxiii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxiii_params
      params.require(:chapxiii).permit(:section_number, :crime, :law)
    end
end
