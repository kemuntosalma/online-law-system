class D8sController < ApplicationController
  before_action :set_d8, only: [:show, :edit, :update, :destroy]

  # GET /d8s
  # GET /d8s.json
  def index
    @d8s = D8.all
  end

  # GET /d8s/1
  # GET /d8s/1.json
  def show
  end

  # GET /d8s/new
  def new
    @d8 = D8.new
  end

  # GET /d8s/1/edit
  def edit
  end

  # POST /d8s
  # POST /d8s.json
  def create
    @d8 = D8.new(d8_params)

    respond_to do |format|
      if @d8.save
        format.html { redirect_to @d8, notice: 'D8 was successfully created.' }
        format.json { render :show, status: :created, location: @d8 }
      else
        format.html { render :new }
        format.json { render json: @d8.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d8s/1
  # PATCH/PUT /d8s/1.json
  def update
    respond_to do |format|
      if @d8.update(d8_params)
        format.html { redirect_to @d8, notice: 'D8 was successfully updated.' }
        format.json { render :show, status: :ok, location: @d8 }
      else
        format.html { render :edit }
        format.json { render json: @d8.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d8s/1
  # DELETE /d8s/1.json
  def destroy
    @d8.destroy
    respond_to do |format|
      format.html { redirect_to d8s_url, notice: 'D8 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_d8
      @d8 = D8.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def d8_params
      params.require(:d8).permit(:section_number, :crime, :law)
    end
end
