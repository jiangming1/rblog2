class AzufangsController < ApplicationController
  before_action :set_azufang, only: [:show, :edit, :update, :destroy,:tuiguang]

  # GET /azufangs
  # GET /azufangs.json
  def index
    @azufangs = Azufang.all
  end

  # GET /azufangs/1
  # GET /azufangs/1.json
  def show
  end
  def tuiguang
  @azufang.update( :money => @azufang.money+1 )
  end
  # GET /azufangs/new
  def new
    @azufang = Azufang.new
  end

  # GET /azufangs/1/edit
  def edit
  end

  # POST /azufangs
  # POST /azufangs.json
  def create
    @azufang = Azufang.new(azufang_params)

    respond_to do |format|
      if @azufang.save
        format.html { redirect_to @azufang, notice: 'Azufang was successfully created.' }
        format.json { render :show, status: :created, location: @azufang }
      else
        format.html { render :new }
        format.json { render json: @azufang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /azufangs/1
  # PATCH/PUT /azufangs/1.json
  def update
    respond_to do |format|
      if @azufang.update(azufang_params)
        format.html { redirect_to @azufang, notice: 'Azufang was successfully updated.' }
        format.json { render :show, status: :ok, location: @azufang }
      else
        format.html { render :edit }
        format.json { render json: @azufang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /azufangs/1
  # DELETE /azufangs/1.json
  def destroy
    @azufang.destroy
    respond_to do |format|
      format.html { redirect_to azufangs_url, notice: 'Azufang was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_azufang
      @azufang = Azufang.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def azufang_params
      params.require(:azufang).permit(:username, :password, :innertext, :xiaoqu, :title, :area, :minprice, :lianxiren, :phone, :tupian,:photo,:money,:shi,:ting,:wei,:ceng,:zongceng)
    end
end
