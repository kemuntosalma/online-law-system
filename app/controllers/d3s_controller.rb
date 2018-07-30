class D3sController < ApplicationController
  before_action :set_d3, only: [:show, :edit, :update, :destroy]

  # GET /d3s
  # GET /d3s.json
  def index
    @d3s = D3.all
  end

  # GET /d3s/1
  # GET /d3s/1.json
  def show
  end

  # GET /d3s/new
  def new
    @d3 = D3.new
  end

  # GET /d3s/1/edit
  def edit
  end

  # POST /d3s
  # POST /d3s.json
  def create
    @d3 = D3.new(d3_params)

    respond_to do |format|
      if @d3.save
        format.html { redirect_to @d3, notice: 'D3 was successfully created.' }
        format.json { render :show, status: :created, location: @d3 }
      else
        format.html { render :new }
        format.json { render json: @d3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d3s/1
  # PATCH/PUT /d3s/1.json
  def update
    respond_to do |format|
      if @d3.update(d3_params)
        format.html { redirect_to @d3, notice: 'D3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @d3 }
      else
        format.html { render :edit }
        format.json { render json: @d3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d3s/1
  # DELETE /d3s/1.json
  def destroy
    @d3.destroy
    respond_to do |format|
      format.html { redirect_to d3s_url, notice: 'D3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_d3
      @d3 = D3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def d3_params
      params.require(:d3).permit(:section_number, :crime, :law)
    end
end
