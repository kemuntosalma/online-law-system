class D4sController < ApplicationController
  before_action :set_d4, only: [:show, :edit, :update, :destroy]

  # GET /d4s
  # GET /d4s.json
  def index
    @d4s = D4.all
  end

  # GET /d4s/1
  # GET /d4s/1.json
  def show
  end

  # GET /d4s/new
  def new
    @d4 = D4.new
  end

  # GET /d4s/1/edit
  def edit
  end

  # POST /d4s
  # POST /d4s.json
  def create
    @d4 = D4.new(d4_params)

    respond_to do |format|
      if @d4.save
        format.html { redirect_to @d4, notice: 'D4 was successfully created.' }
        format.json { render :show, status: :created, location: @d4 }
      else
        format.html { render :new }
        format.json { render json: @d4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d4s/1
  # PATCH/PUT /d4s/1.json
  def update
    respond_to do |format|
      if @d4.update(d4_params)
        format.html { redirect_to @d4, notice: 'D4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @d4 }
      else
        format.html { render :edit }
        format.json { render json: @d4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d4s/1
  # DELETE /d4s/1.json
  def destroy
    @d4.destroy
    respond_to do |format|
      format.html { redirect_to d4s_url, notice: 'D4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_d4
      @d4 = D4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def d4_params
      params.require(:d4).permit(:section_number, :crime, :law)
    end
end
