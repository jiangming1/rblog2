require 'open-uri'
require 'iconv'
class YonghusController < ApplicationController
  before_action :set_yonghu, only: [:show, :edit, :update, :destroy]

  # GET /yonghus
  # GET /yonghus.json
  def index
    @yonghus = Yonghu.all
  end

  # GET /yonghus/1
  # GET /yonghus/1.json
  def show
  end

  # GET /yonghus/new
  def new
    @yonghu = Yonghu.new
  end

  # GET /yonghus/1/edit
  def edit
  end

  # POST /yonghus
  # POST /yonghus.json
  def create
    @yonghu = Yonghu.new(yonghu_params)

    respond_to do |format|
      if @yonghu.save
        format.html { redirect_to @yonghu, notice: 'Yonghu was successfully created.' }
        format.json { render :show, status: :created, location: @yonghu }
      else
        format.html { render :new }
        format.json { render json: @yonghu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yonghus/1
  # PATCH/PUT /yonghus/1.json
  def update
    respond_to do |format|
      if @yonghu.update(yonghu_params)
        format.html { redirect_to @yonghu, notice: 'Yonghu was successfully updated.' }
        format.json { render :show, status: :ok, location: @yonghu }
      else
        format.html { render :edit }
        format.json { render json: @yonghu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yonghus/1
  # DELETE /yonghus/1.json
  def destroy
    @yonghu.destroy
    respond_to do |format|
      format.html { redirect_to yonghus_url, notice: 'Yonghu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yonghu
      @yonghu = Yonghu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yonghu_params
      params.require(:yonghu).permit(:xingming, :gongsimingcheng, :shouji, :qq, :quhao, :gongsidianhua, :ip,:avatar)
    end
end
