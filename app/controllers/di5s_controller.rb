class Di5sController < ApplicationController
  before_action :set_di5, only: [:show, :edit, :update, :destroy]

  # GET /di5s
  # GET /di5s.json
  def index
    @di5s = Di5.all
  end

  # GET /di5s/1
  # GET /di5s/1.json
  def show
  end

  # GET /di5s/new
  def new
    @di5 = Di5.new
  end

  # GET /di5s/1/edit
  def edit
  end

  # POST /di5s
  # POST /di5s.json
  def create
    @di5 = Di5.new(di5_params)

    respond_to do |format|
      if @di5.save
        format.html { redirect_to @di5, notice: 'Di5 was successfully created.' }
        format.json { render :show, status: :created, location: @di5 }
      else
        format.html { render :new }
        format.json { render json: @di5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /di5s/1
  # PATCH/PUT /di5s/1.json
  def update
    respond_to do |format|
      if @di5.update(di5_params)
        format.html { redirect_to @di5, notice: 'Di5 was successfully updated.' }
        format.json { render :show, status: :ok, location: @di5 }
      else
        format.html { render :edit }
        format.json { render json: @di5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /di5s/1
  # DELETE /di5s/1.json
  def destroy
    @di5.destroy
    respond_to do |format|
      format.html { redirect_to di5s_url, notice: 'Di5 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_di5
      @di5 = Di5.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def di5_params
      params.require(:di5).permit(:s, :c, :l, :sa, :ca, :la, :sb, :cb, :lb, :sc, :cc, :lc, :sd, :cd, :ld, :sf, :cf, :lf)
    end
end
