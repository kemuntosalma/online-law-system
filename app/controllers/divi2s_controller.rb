class Divi2sController < ApplicationController
  before_action :set_divi2, only: [:show, :edit, :update, :destroy]

  # GET /divi2s
  # GET /divi2s.json
  def index
    @divi2s = Divi2.all
  end

  # GET /divi2s/1
  # GET /divi2s/1.json
  def show
  end

  # GET /divi2s/new
  def new
    @divi2 = Divi2.new
  end

  # GET /divi2s/1/edit
  def edit
  end

  # POST /divi2s
  # POST /divi2s.json
  def create
    @divi2 = Divi2.new(divi2_params)

    respond_to do |format|
      if @divi2.save
        format.html { redirect_to @divi2, notice: 'Divi2 was successfully created.' }
        format.json { render :show, status: :created, location: @divi2 }
      else
        format.html { render :new }
        format.json { render json: @divi2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /divi2s/1
  # PATCH/PUT /divi2s/1.json
  def update
    respond_to do |format|
      if @divi2.update(divi2_params)
        format.html { redirect_to @divi2, notice: 'Divi2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @divi2 }
      else
        format.html { render :edit }
        format.json { render json: @divi2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divi2s/1
  # DELETE /divi2s/1.json
  def destroy
    @divi2.destroy
    respond_to do |format|
      format.html { redirect_to divi2s_url, notice: 'Divi2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_divi2
      @divi2 = Divi2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def divi2_params
      params.require(:divi2).permit(:section_number, :crime, :laws, :section_numbr, :crme, :lws, :secton_number, :crim, :law)
    end
end
