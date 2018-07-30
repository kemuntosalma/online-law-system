class Di8sController < ApplicationController
  before_action :set_di8, only: [:show, :edit, :update, :destroy]

  # GET /di8s
  # GET /di8s.json
  def index
    @di8s = Di8.all
  end

  # GET /di8s/1
  # GET /di8s/1.json
  def show
  end

  # GET /di8s/new
  def new
    @di8 = Di8.new
  end

  # GET /di8s/1/edit
  def edit
  end

  # POST /di8s
  # POST /di8s.json
  def create
    @di8 = Di8.new(di8_params)

    respond_to do |format|
      if @di8.save
        format.html { redirect_to @di8, notice: 'Di8 was successfully created.' }
        format.json { render :show, status: :created, location: @di8 }
      else
        format.html { render :new }
        format.json { render json: @di8.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /di8s/1
  # PATCH/PUT /di8s/1.json
  def update
    respond_to do |format|
      if @di8.update(di8_params)
        format.html { redirect_to @di8, notice: 'Di8 was successfully updated.' }
        format.json { render :show, status: :ok, location: @di8 }
      else
        format.html { render :edit }
        format.json { render json: @di8.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /di8s/1
  # DELETE /di8s/1.json
  def destroy
    @di8.destroy
    respond_to do |format|
      format.html { redirect_to di8s_url, notice: 'Di8 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_di8
      @di8 = Di8.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def di8_params
      params.fetch(:di8, {})
    end
end
