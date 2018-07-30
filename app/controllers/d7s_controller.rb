class D7sController < ApplicationController
  before_action :set_d7, only: [:show, :edit, :update, :destroy]

  # GET /d7s
  # GET /d7s.json
  def index
    @d7s = D7.all
  end

  # GET /d7s/1
  # GET /d7s/1.json
  def show
  end

  # GET /d7s/new
  def new
    @d7 = D7.new
  end

  # GET /d7s/1/edit
  def edit
  end

  # POST /d7s
  # POST /d7s.json
  def create
    @d7 = D7.new(d7_params)

    respond_to do |format|
      if @d7.save
        format.html { redirect_to @d7, notice: 'D7 was successfully created.' }
        format.json { render :show, status: :created, location: @d7 }
      else
        format.html { render :new }
        format.json { render json: @d7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d7s/1
  # PATCH/PUT /d7s/1.json
  def update
    respond_to do |format|
      if @d7.update(d7_params)
        format.html { redirect_to @d7, notice: 'D7 was successfully updated.' }
        format.json { render :show, status: :ok, location: @d7 }
      else
        format.html { render :edit }
        format.json { render json: @d7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d7s/1
  # DELETE /d7s/1.json
  def destroy
    @d7.destroy
    respond_to do |format|
      format.html { redirect_to d7s_url, notice: 'D7 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_d7
      @d7 = D7.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def d7_params
      params.require(:d7).permit(:section_number, :crime, :law)
    end
end
