class Di4sController < ApplicationController
  before_action :set_di4, only: [:show, :edit, :update, :destroy]

  # GET /di4s
  # GET /di4s.json
  def index
    @di4s = Di4.all
  end

  # GET /di4s/1
  # GET /di4s/1.json
  def show
  end

  # GET /di4s/new
  def new
    @di4 = Di4.new
  end

  # GET /di4s/1/edit
  def edit
  end

  # POST /di4s
  # POST /di4s.json
  def create
    @di4 = Di4.new(di4_params)

    respond_to do |format|
      if @di4.save
        format.html { redirect_to @di4, notice: 'Di4 was successfully created.' }
        format.json { render :show, status: :created, location: @di4 }
      else
        format.html { render :new }
        format.json { render json: @di4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /di4s/1
  # PATCH/PUT /di4s/1.json
  def update
    respond_to do |format|
      if @di4.update(di4_params)
        format.html { redirect_to @di4, notice: 'Di4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @di4 }
      else
        format.html { render :edit }
        format.json { render json: @di4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /di4s/1
  # DELETE /di4s/1.json
  def destroy
    @di4.destroy
    respond_to do |format|
      format.html { redirect_to di4s_url, notice: 'Di4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_di4
      @di4 = Di4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def di4_params
      params.require(:di4).permit(:s, :c, :l, :sa, :ca, :la, :sb, :cb, :lb, :sc, :cc, :lc, :sd, :cd, :ld, :sf, :cf, :lf)
    end
end
