class D6sController < ApplicationController
  before_action :set_d6, only: [:show, :edit, :update, :destroy]

  # GET /d6s
  # GET /d6s.json
  def index
    @d6s = D6.all
  end

  # GET /d6s/1
  # GET /d6s/1.json
  def show
  end

  # GET /d6s/new
  def new
    @d6 = D6.new
  end

  # GET /d6s/1/edit
  def edit
  end

  # POST /d6s
  # POST /d6s.json
  def create
    @d6 = D6.new(d6_params)

    respond_to do |format|
      if @d6.save
        format.html { redirect_to @d6, notice: 'D6 was successfully created.' }
        format.json { render :show, status: :created, location: @d6 }
      else
        format.html { render :new }
        format.json { render json: @d6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d6s/1
  # PATCH/PUT /d6s/1.json
  def update
    respond_to do |format|
      if @d6.update(d6_params)
        format.html { redirect_to @d6, notice: 'D6 was successfully updated.' }
        format.json { render :show, status: :ok, location: @d6 }
      else
        format.html { render :edit }
        format.json { render json: @d6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d6s/1
  # DELETE /d6s/1.json
  def destroy
    @d6.destroy
    respond_to do |format|
      format.html { redirect_to d6s_url, notice: 'D6 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_d6
      @d6 = D6.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def d6_params
      params.require(:d6).permit(:section_number, :crime, :law)
    end
end
