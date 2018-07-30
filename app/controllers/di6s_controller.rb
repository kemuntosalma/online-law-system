class Di6sController < ApplicationController
  before_action :set_di6, only: [:show, :edit, :update, :destroy]

  # GET /di6s
  # GET /di6s.json
  def index
    @di6s = Di6.all
  end

  # GET /di6s/1
  # GET /di6s/1.json
  def show
  end

  # GET /di6s/new
  def new
    @di6 = Di6.new
  end

  # GET /di6s/1/edit
  def edit
  end

  # POST /di6s
  # POST /di6s.json
  def create
    @di6 = Di6.new(di6_params)

    respond_to do |format|
      if @di6.save
        format.html { redirect_to @di6, notice: 'Di6 was successfully created.' }
        format.json { render :show, status: :created, location: @di6 }
      else
        format.html { render :new }
        format.json { render json: @di6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /di6s/1
  # PATCH/PUT /di6s/1.json
  def update
    respond_to do |format|
      if @di6.update(di6_params)
        format.html { redirect_to @di6, notice: 'Di6 was successfully updated.' }
        format.json { render :show, status: :ok, location: @di6 }
      else
        format.html { render :edit }
        format.json { render json: @di6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /di6s/1
  # DELETE /di6s/1.json
  def destroy
    @di6.destroy
    respond_to do |format|
      format.html { redirect_to di6s_url, notice: 'Di6 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_di6
      @di6 = Di6.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def di6_params
      params.require(:di6).permit(:s, :c, :l)
    end
end
