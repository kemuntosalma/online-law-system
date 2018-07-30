class Di3sController < ApplicationController
  before_action :set_di3, only: [:show, :edit, :update, :destroy]

  # GET /di3s
  # GET /di3s.json
  def index
    @di3s = Di3.all
  end

  # GET /di3s/1
  # GET /di3s/1.json
  def show
  end

  # GET /di3s/new
  def new
    @di3 = Di3.new
  end

  # GET /di3s/1/edit
  def edit
  end

  # POST /di3s
  # POST /di3s.json
  def create
    @di3 = Di3.new(di3_params)

    respond_to do |format|
      if @di3.save
        format.html { redirect_to @di3, notice: 'Di3 was successfully created.' }
        format.json { render :show, status: :created, location: @di3 }
      else
        format.html { render :new }
        format.json { render json: @di3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /di3s/1
  # PATCH/PUT /di3s/1.json
  def update
    respond_to do |format|
      if @di3.update(di3_params)
        format.html { redirect_to @di3, notice: 'Di3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @di3 }
      else
        format.html { render :edit }
        format.json { render json: @di3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /di3s/1
  # DELETE /di3s/1.json
  def destroy
    @di3.destroy
    respond_to do |format|
      format.html { redirect_to di3s_url, notice: 'Di3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_di3
      @di3 = Di3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def di3_params
      params.require(:di3).permit(:s, :c, :l, :sa, :ca, :la, :sb, :cb, :lb, :sc, :cc, :lc, :sd, :cd, :ld)
    end
end
