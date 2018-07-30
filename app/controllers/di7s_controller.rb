class Di7sController < ApplicationController
  before_action :set_di7, only: [:show, :edit, :update, :destroy]

  # GET /di7s
  # GET /di7s.json
  def index
    @di7s = Di7.all
  end

  # GET /di7s/1
  # GET /di7s/1.json
  def show
  end

  # GET /di7s/new
  def new
    @di7 = Di7.new
  end

  # GET /di7s/1/edit
  def edit
  end

  # POST /di7s
  # POST /di7s.json
  def create
    @di7 = Di7.new(di7_params)

    respond_to do |format|
      if @di7.save
        format.html { redirect_to @di7, notice: 'Di7 was successfully created.' }
        format.json { render :show, status: :created, location: @di7 }
      else
        format.html { render :new }
        format.json { render json: @di7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /di7s/1
  # PATCH/PUT /di7s/1.json
  def update
    respond_to do |format|
      if @di7.update(di7_params)
        format.html { redirect_to @di7, notice: 'Di7 was successfully updated.' }
        format.json { render :show, status: :ok, location: @di7 }
      else
        format.html { render :edit }
        format.json { render json: @di7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /di7s/1
  # DELETE /di7s/1.json
  def destroy
    @di7.destroy
    respond_to do |format|
      format.html { redirect_to di7s_url, notice: 'Di7 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_di7
      @di7 = Di7.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def di7_params
      params.require(:di7).permit(:s, :c, :l, :sa, :ca, :la, :sb, :cb, :lb, :sc, :cc, :lc, :sd, :cd, :ld, :sf, :cf, :lf, :sg, :cg, :lg, :sh, :ch, :lh)
    end
end
