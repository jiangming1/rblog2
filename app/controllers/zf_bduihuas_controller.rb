class ZfBduihuasController < ApplicationController
  before_action :set_zf_bduihua, only: [:show, :edit, :update, :destroy]

  # GET /zf_bduihuas
  # GET /zf_bduihuas.json
  def index
    @zf_bduihuas = ZfBduihua.all
  end

  # GET /zf_bduihuas/1
  # GET /zf_bduihuas/1.json
  def show
  end

  # GET /zf_bduihuas/new
  def new
    @zf_bduihua = ZfBduihua.new
  end

  # GET /zf_bduihuas/1/edit
  def edit
  end

  # POST /zf_bduihuas
  # POST /zf_bduihuas.json
  def create
    @zf_bduihua = ZfBduihua.new(zf_bduihua_params)

    respond_to do |format|
      if @zf_bduihua.save
        format.html { redirect_to @zf_bduihua, notice: 'Zf bduihua was successfully created.' }
        format.json { render :show, status: :created, location: @zf_bduihua }
      else
        format.html { render :new }
        format.json { render json: @zf_bduihua.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zf_bduihuas/1
  # PATCH/PUT /zf_bduihuas/1.json
  def update
    respond_to do |format|
      if @zf_bduihua.update(zf_bduihua_params)
        format.html { redirect_to @zf_bduihua, notice: 'Zf bduihua was successfully updated.' }
        format.json { render :show, status: :ok, location: @zf_bduihua }
      else
        format.html { render :edit }
        format.json { render json: @zf_bduihua.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zf_bduihuas/1
  # DELETE /zf_bduihuas/1.json
  def destroy
    @zf_bduihua.destroy
    respond_to do |format|
      format.html { redirect_to zf_bduihuas_url, notice: 'Zf bduihua was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zf_bduihua
      @zf_bduihua = ZfBduihua.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zf_bduihua_params
      params.require(:zf_bduihua).permit(:riqi1, :riqi2, :riqi3, :jin1, :jin2, :jin3, :touxiang, :zhanghu, :shouji, :jiaoyihao, :shijian, :name)
    end
end
