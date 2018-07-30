class ChapxesController < ApplicationController
  before_action :set_chapx, only: [:show, :edit, :update, :destroy]

  # GET /chapxes
  # GET /chapxes.json
  def index
    @chapxes = Chapx.all
  end

  # GET /chapxes/1
  # GET /chapxes/1.json
  def show
  end

  # GET /chapxes/new
  def new
    @chapx = Chapx.new
  end

  # GET /chapxes/1/edit
  def edit
  end

  # POST /chapxes
  # POST /chapxes.json
  def create
    @chapx = Chapx.new(chapx_params)

    respond_to do |format|
      if @chapx.save
        format.html { redirect_to @chapx, notice: 'Chapx was successfully created.' }
        format.json { render :show, status: :created, location: @chapx }
      else
        format.html { render :new }
        format.json { render json: @chapx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxes/1
  # PATCH/PUT /chapxes/1.json
  def update
    respond_to do |format|
      if @chapx.update(chapx_params)
        format.html { redirect_to @chapx, notice: 'Chapx was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapx }
      else
        format.html { render :edit }
        format.json { render json: @chapx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxes/1
  # DELETE /chapxes/1.json
  def destroy
    @chapx.destroy
    respond_to do |format|
      format.html { redirect_to chapxes_url, notice: 'Chapx was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapx
      @chapx = Chapx.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapx_params
      params.require(:chapx).permit(:section_number, :crime, :law)
    end
end
