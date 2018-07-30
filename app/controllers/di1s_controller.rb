class Di1sController < ApplicationController
  before_action :set_di1, only: [:show, :edit, :update, :destroy]

  # GET /di1s
  # GET /di1s.json
  def index
    @di1s = Di1.all
  end

  # GET /di1s/1
  # GET /di1s/1.json
  def show
  end

  # GET /di1s/new
  def new
    @di1 = Di1.new
  end

  # GET /di1s/1/edit
  def edit
  end

  # POST /di1s
  # POST /di1s.json
  def create
    @di1 = Di1.new(di1_params)

    respond_to do |format|
      if @di1.save
        format.html { redirect_to @di1, notice: 'Di1 was successfully created.' }
        format.json { render :show, status: :created, location: @di1 }
      else
        format.html { render :new }
        format.json { render json: @di1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /di1s/1
  # PATCH/PUT /di1s/1.json
  def update
    respond_to do |format|
      if @di1.update(di1_params)
        format.html { redirect_to @di1, notice: 'Di1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @di1 }
      else
        format.html { render :edit }
        format.json { render json: @di1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /di1s/1
  # DELETE /di1s/1.json
  def destroy
    @di1.destroy
    respond_to do |format|
      format.html { redirect_to di1s_url, notice: 'Di1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_di1
      @di1 = Di1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def di1_params
      params.require(:di1).permit(:s, :c, :l, :sa, :ca, :la, :sb, :cb, :lb)
    end
end
