class ZfBjietusController < ApplicationController
  before_action :set_zf_bjietu, only: [:show, :edit, :update, :destroy]

  # GET /zf_bjietus
  # GET /zf_bjietus.json
  def index
    @zf_bjietus = ZfBjietu.all
  end

  # GET /zf_bjietus/1
  # GET /zf_bjietus/1.json
  def show
  end

  # GET /zf_bjietus/new
  def new
    @zf_bjietu = ZfBjietu.new
  end

  # GET /zf_bjietus/1/edit
  def edit
  end

  # POST /zf_bjietus
  # POST /zf_bjietus.json
  def create
    @zf_bjietu = ZfBjietu.new(zf_bjietu_params)

    respond_to do |format|
      if @zf_bjietu.save
        format.html { redirect_to @zf_bjietu, notice: 'Zf bjietu was successfully created.' }
        format.json { render :show, status: :created, location: @zf_bjietu }
      else
        format.html { render :new }
        format.json { render json: @zf_bjietu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zf_bjietus/1
  # PATCH/PUT /zf_bjietus/1.json
  def update
    respond_to do |format|
      if @zf_bjietu.update(zf_bjietu_params)
        format.html { redirect_to @zf_bjietu, notice: 'Zf bjietu was successfully updated.' }
        format.json { render :show, status: :ok, location: @zf_bjietu }
      else
        format.html { render :edit }
        format.json { render json: @zf_bjietu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zf_bjietus/1
  # DELETE /zf_bjietus/1.json
  def destroy
    @zf_bjietu.destroy
    respond_to do |format|
      format.html { redirect_to zf_bjietus_url, notice: 'Zf bjietu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zf_bjietu
      @zf_bjietu = ZfBjietu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zf_bjietu_params
      params.require(:zf_bjietu).permit(:biaotixingming, :zhanghu, :shouji, :jiaoyihao, :shijian)
    end
end
