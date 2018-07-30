class Di2sController < ApplicationController
  before_action :set_di2, only: [:show, :edit, :update, :destroy]

  # GET /di2s
  # GET /di2s.json
  def index
    @di2s = Di2.all
  end

  # GET /di2s/1
  # GET /di2s/1.json
  def show
  end

  # GET /di2s/new
  def new
    @di2 = Di2.new
  end

  # GET /di2s/1/edit
  def edit
  end

  # POST /di2s
  # POST /di2s.json
  def create
    @di2 = Di2.new(di2_params)

    respond_to do |format|
      if @di2.save
        format.html { redirect_to @di2, notice: 'Di2 was successfully created.' }
        format.json { render :show, status: :created, location: @di2 }
      else
        format.html { render :new }
        format.json { render json: @di2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /di2s/1
  # PATCH/PUT /di2s/1.json
  def update
    respond_to do |format|
      if @di2.update(di2_params)
        format.html { redirect_to @di2, notice: 'Di2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @di2 }
      else
        format.html { render :edit }
        format.json { render json: @di2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /di2s/1
  # DELETE /di2s/1.json
  def destroy
    @di2.destroy
    respond_to do |format|
      format.html { redirect_to di2s_url, notice: 'Di2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_di2
      @di2 = Di2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def di2_params
      params.require(:di2).permit(:s, :c, :l, :sa, :ca, :la, :sb, :cb, :lb, :sc, :cc, :lc)
    end
end
