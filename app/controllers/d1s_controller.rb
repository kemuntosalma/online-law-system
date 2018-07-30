class D1sController < ApplicationController
  before_action :set_d1, only: [:show, :edit, :update, :destroy]

  # GET /d1s
  # GET /d1s.json
  def index
    @d1s = D1.all
  end

  # GET /d1s/1
  # GET /d1s/1.json
  def show
  end

  # GET /d1s/new
  def new
    @d1 = D1.new
  end

  # GET /d1s/1/edit
  def edit
  end

  # POST /d1s
  # POST /d1s.json
  def create
    @d1 = D1.new(d1_params)

    respond_to do |format|
      if @d1.save
        format.html { redirect_to @d1, notice: 'D1 was successfully created.' }
        format.json { render :show, status: :created, location: @d1 }
      else
        format.html { render :new }
        format.json { render json: @d1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d1s/1
  # PATCH/PUT /d1s/1.json
  def update
    respond_to do |format|
      if @d1.update(d1_params)
        format.html { redirect_to @d1, notice: 'D1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @d1 }
      else
        format.html { render :edit }
        format.json { render json: @d1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d1s/1
  # DELETE /d1s/1.json
  def destroy
    @d1.destroy
    respond_to do |format|
      format.html { redirect_to d1s_url, notice: 'D1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_d1
      @d1 = D1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def d1_params
      params.require(:d1).permit(:section_number, :crime, :law)
    end
end
