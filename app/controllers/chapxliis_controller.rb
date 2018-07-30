class ChapxliisController < ApplicationController
  before_action :set_chapxlii, only: [:show, :edit, :update, :destroy]

  # GET /chapxliis
  # GET /chapxliis.json
  def index
    @chapxliis = Chapxlii.all
  end

  # GET /chapxliis/1
  # GET /chapxliis/1.json
  def show
  end

  # GET /chapxliis/new
  def new
    @chapxlii = Chapxlii.new
  end

  # GET /chapxliis/1/edit
  def edit
  end

  # POST /chapxliis
  # POST /chapxliis.json
  def create
    @chapxlii = Chapxlii.new(chapxlii_params)

    respond_to do |format|
      if @chapxlii.save
        format.html { redirect_to @chapxlii, notice: 'Chapxlii was successfully created.' }
        format.json { render :show, status: :created, location: @chapxlii }
      else
        format.html { render :new }
        format.json { render json: @chapxlii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxliis/1
  # PATCH/PUT /chapxliis/1.json
  def update
    respond_to do |format|
      if @chapxlii.update(chapxlii_params)
        format.html { redirect_to @chapxlii, notice: 'Chapxlii was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxlii }
      else
        format.html { render :edit }
        format.json { render json: @chapxlii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxliis/1
  # DELETE /chapxliis/1.json
  def destroy
    @chapxlii.destroy
    respond_to do |format|
      format.html { redirect_to chapxliis_url, notice: 'Chapxlii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxlii
      @chapxlii = Chapxlii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxlii_params
      params.require(:chapxlii).permit(:section_number, :crime, :law)
    end
end
