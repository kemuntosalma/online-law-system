class D5sController < ApplicationController
  before_action :set_d5, only: [:show, :edit, :update, :destroy]

  # GET /d5s
  # GET /d5s.json
  def index
    @d5s = D5.all
  end

  # GET /d5s/1
  # GET /d5s/1.json
  def show
  end

  # GET /d5s/new
  def new
    @d5 = D5.new
  end

  # GET /d5s/1/edit
  def edit
  end

  # POST /d5s
  # POST /d5s.json
  def create
    @d5 = D5.new(d5_params)

    respond_to do |format|
      if @d5.save
        format.html { redirect_to @d5, notice: 'D5 was successfully created.' }
        format.json { render :show, status: :created, location: @d5 }
      else
        format.html { render :new }
        format.json { render json: @d5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d5s/1
  # PATCH/PUT /d5s/1.json
  def update
    respond_to do |format|
      if @d5.update(d5_params)
        format.html { redirect_to @d5, notice: 'D5 was successfully updated.' }
        format.json { render :show, status: :ok, location: @d5 }
      else
        format.html { render :edit }
        format.json { render json: @d5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d5s/1
  # DELETE /d5s/1.json
  def destroy
    @d5.destroy
    respond_to do |format|
      format.html { redirect_to d5s_url, notice: 'D5 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_d5
      @d5 = D5.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def d5_params
      params.require(:d5).permit(:section_number, :crime, :law)
    end
end
