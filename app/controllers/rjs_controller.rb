class RjsController < ApplicationController
  before_action :set_rj, only: [:show, :edit, :update, :destroy]

  # GET /rjs
  # GET /rjs.json
  def index
    @rjs = Rj.all
  end

  # GET /rjs/1
  # GET /rjs/1.json
  def show
  end

  # GET /rjs/new
  def new
    @rj = Rj.new
  end

  # GET /rjs/1/edit
  def edit
  end

  # POST /rjs
  # POST /rjs.json
  def create
    @rj = Rj.new(rj_params)

    respond_to do |format|
      if @rj.save
        format.html { redirect_to @rj, notice: 'Rj was successfully created.' }
        format.json { render :show, status: :created, location: @rj }
      else
        format.html { render :new }
        format.json { render json: @rj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rjs/1
  # PATCH/PUT /rjs/1.json
  def update
    respond_to do |format|
      if @rj.update(rj_params)
        format.html { redirect_to @rj, notice: 'Rj was successfully updated.' }
        format.json { render :show, status: :ok, location: @rj }
      else
        format.html { render :edit }
        format.json { render json: @rj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rjs/1
  # DELETE /rjs/1.json
  def destroy
    @rj.destroy
    respond_to do |format|
      format.html { redirect_to rjs_url, notice: 'Rj was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rj
      @rj = Rj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rj_params
      params.require(:rj).permit(:ming, :danjia, :wangjia, :jieshao, :pdf, :caozuo, :kehuduan, :daohang, :chuangkou, :baobiao, :jiaocheng, :xinxijiegou)
    end
end
