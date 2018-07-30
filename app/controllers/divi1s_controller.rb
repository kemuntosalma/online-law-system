class Divi1sController < ApplicationController
  before_action :set_divi1, only: [:show, :edit, :update, :destroy]

  # GET /divi1s
  # GET /divi1s.json
  def index
    @divi1s = Divi1.all
  end

  # GET /divi1s/1
  # GET /divi1s/1.json
  def show
  end

  # GET /divi1s/new
  def new
    @divi1 = Divi1.new
  end

  # GET /divi1s/1/edit
  def edit
  end

  # POST /divi1s
  # POST /divi1s.json
  def create
    @divi1 = Divi1.new(divi1_params)

    respond_to do |format|
      if @divi1.save
        format.html { redirect_to @divi1, notice: 'Divi1 was successfully created.' }
        format.json { render :show, status: :created, location: @divi1 }
      else
        format.html { render :new }
        format.json { render json: @divi1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /divi1s/1
  # PATCH/PUT /divi1s/1.json
  def update
    respond_to do |format|
      if @divi1.update(divi1_params)
        format.html { redirect_to @divi1, notice: 'Divi1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @divi1 }
      else
        format.html { render :edit }
        format.json { render json: @divi1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divi1s/1
  # DELETE /divi1s/1.json
  def destroy
    @divi1.destroy
    respond_to do |format|
      format.html { redirect_to divi1s_url, notice: 'Divi1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_divi1
      @divi1 = Divi1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def divi1_params
      params.require(:divi1).permit(:section_number, :crime, :laws, :section_numbr, :crme, :lws, :secton_number, :crim, :law)
    end
end
