class DizhisController < ApplicationController
  before_action :set_dizhi, only: [:show, :edit, :update, :destroy]

  # GET /dizhis
  # GET /dizhis.json
  def index
    @dizhis = Dizhi.all
  end

  # GET /dizhis/1
  # GET /dizhis/1.json
  def show
  end

  # GET /dizhis/new
  def new
    @dizhi = Dizhi.new
  end

  # GET /dizhis/1/edit
  def edit
  end

  # POST /dizhis
  # POST /dizhis.json
  def create
    @dizhi = Dizhi.new(dizhi_params)

    respond_to do |format|
      if @dizhi.save
        format.html { redirect_to @dizhi, notice: 'Dizhi was successfully created.' }
        format.json { render :show, status: :created, location: @dizhi }
      else
        format.html { render :new }
        format.json { render json: @dizhi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dizhis/1
  # PATCH/PUT /dizhis/1.json
  def update
    respond_to do |format|
      if @dizhi.update(dizhi_params)
        format.html { redirect_to @dizhi, notice: 'Dizhi was successfully updated.' }
        format.json { render :show, status: :ok, location: @dizhi }
      else
        format.html { render :edit }
        format.json { render json: @dizhi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dizhis/1
  # DELETE /dizhis/1.json
  def destroy
    @dizhi.destroy
    respond_to do |format|
      format.html { redirect_to dizhis_url, notice: 'Dizhi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dizhi
      @dizhi = Dizhi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dizhi_params
      params.require(:dizhi).permit(:name, :tel, :addr)
    end
end
