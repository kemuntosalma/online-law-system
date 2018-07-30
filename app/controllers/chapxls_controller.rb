class ChapxlsController < ApplicationController
  before_action :set_chapxl, only: [:show, :edit, :update, :destroy]

  # GET /chapxls
  # GET /chapxls.json
  def index
    @chapxls = Chapxl.all
  end

  # GET /chapxls/1
  # GET /chapxls/1.json
  def show
  end

  # GET /chapxls/new
  def new
    @chapxl = Chapxl.new
  end

  # GET /chapxls/1/edit
  def edit
  end

  # POST /chapxls
  # POST /chapxls.json
  def create
    @chapxl = Chapxl.new(chapxl_params)

    respond_to do |format|
      if @chapxl.save
        format.html { redirect_to @chapxl, notice: 'Chapxl was successfully created.' }
        format.json { render :show, status: :created, location: @chapxl }
      else
        format.html { render :new }
        format.json { render json: @chapxl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxls/1
  # PATCH/PUT /chapxls/1.json
  def update
    respond_to do |format|
      if @chapxl.update(chapxl_params)
        format.html { redirect_to @chapxl, notice: 'Chapxl was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxl }
      else
        format.html { render :edit }
        format.json { render json: @chapxl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxls/1
  # DELETE /chapxls/1.json
  def destroy
    @chapxl.destroy
    respond_to do |format|
      format.html { redirect_to chapxls_url, notice: 'Chapxl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxl
      @chapxl = Chapxl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxl_params
      params.require(:chapxl).permit(:section_number, :crime, :law)
    end
end
