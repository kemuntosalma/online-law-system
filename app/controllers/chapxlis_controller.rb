class ChapxlisController < ApplicationController
  before_action :set_chapxli, only: [:show, :edit, :update, :destroy]

  # GET /chapxlis
  # GET /chapxlis.json
  def index
    @chapxlis = Chapxli.all
  end

  # GET /chapxlis/1
  # GET /chapxlis/1.json
  def show
  end

  # GET /chapxlis/new
  def new
    @chapxli = Chapxli.new
  end

  # GET /chapxlis/1/edit
  def edit
  end

  # POST /chapxlis
  # POST /chapxlis.json
  def create
    @chapxli = Chapxli.new(chapxli_params)

    respond_to do |format|
      if @chapxli.save
        format.html { redirect_to @chapxli, notice: 'Chapxli was successfully created.' }
        format.json { render :show, status: :created, location: @chapxli }
      else
        format.html { render :new }
        format.json { render json: @chapxli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxlis/1
  # PATCH/PUT /chapxlis/1.json
  def update
    respond_to do |format|
      if @chapxli.update(chapxli_params)
        format.html { redirect_to @chapxli, notice: 'Chapxli was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxli }
      else
        format.html { render :edit }
        format.json { render json: @chapxli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxlis/1
  # DELETE /chapxlis/1.json
  def destroy
    @chapxli.destroy
    respond_to do |format|
      format.html { redirect_to chapxlis_url, notice: 'Chapxli was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxli
      @chapxli = Chapxli.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxli_params
      params.require(:chapxli).permit(:section_number, :crime, :law)
    end
end
