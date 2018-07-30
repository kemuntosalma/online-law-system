class D2sController < ApplicationController
  before_action :set_d2, only: [:show, :edit, :update, :destroy]

  # GET /d2s
  # GET /d2s.json
  def index
    @d2s = D2.all
  end

  # GET /d2s/1
  # GET /d2s/1.json
  def show
  end

  # GET /d2s/new
  def new
    @d2 = D2.new
  end

  # GET /d2s/1/edit
  def edit
  end

  # POST /d2s
  # POST /d2s.json
  def create
    @d2 = D2.new(d2_params)

    respond_to do |format|
      if @d2.save
        format.html { redirect_to @d2, notice: 'D2 was successfully created.' }
        format.json { render :show, status: :created, location: @d2 }
      else
        format.html { render :new }
        format.json { render json: @d2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d2s/1
  # PATCH/PUT /d2s/1.json
  def update
    respond_to do |format|
      if @d2.update(d2_params)
        format.html { redirect_to @d2, notice: 'D2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @d2 }
      else
        format.html { render :edit }
        format.json { render json: @d2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d2s/1
  # DELETE /d2s/1.json
  def destroy
    @d2.destroy
    respond_to do |format|
      format.html { redirect_to d2s_url, notice: 'D2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_d2
      @d2 = D2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def d2_params
      params.require(:d2).permit(:section_number, :crime, :law)
    end
end
