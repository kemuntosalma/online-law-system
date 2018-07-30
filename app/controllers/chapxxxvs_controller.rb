class ChapxxxvsController < ApplicationController
  before_action :set_chapxxxv, only: [:show, :edit, :update, :destroy]

  # GET /chapxxxvs
  # GET /chapxxxvs.json
  def index
    @chapxxxvs = Chapxxxv.all
  end

  # GET /chapxxxvs/1
  # GET /chapxxxvs/1.json
  def show
  end

  # GET /chapxxxvs/new
  def new
    @chapxxxv = Chapxxxv.new
  end

  # GET /chapxxxvs/1/edit
  def edit
  end

  # POST /chapxxxvs
  # POST /chapxxxvs.json
  def create
    @chapxxxv = Chapxxxv.new(chapxxxv_params)

    respond_to do |format|
      if @chapxxxv.save
        format.html { redirect_to @chapxxxv, notice: 'Chapxxxv was successfully created.' }
        format.json { render :show, status: :created, location: @chapxxxv }
      else
        format.html { render :new }
        format.json { render json: @chapxxxv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chapxxxvs/1
  # PATCH/PUT /chapxxxvs/1.json
  def update
    respond_to do |format|
      if @chapxxxv.update(chapxxxv_params)
        format.html { redirect_to @chapxxxv, notice: 'Chapxxxv was successfully updated.' }
        format.json { render :show, status: :ok, location: @chapxxxv }
      else
        format.html { render :edit }
        format.json { render json: @chapxxxv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chapxxxvs/1
  # DELETE /chapxxxvs/1.json
  def destroy
    @chapxxxv.destroy
    respond_to do |format|
      format.html { redirect_to chapxxxvs_url, notice: 'Chapxxxv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapxxxv
      @chapxxxv = Chapxxxv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapxxxv_params
      params.require(:chapxxxv).permit(:section_number, :crime, :law)
    end
end
