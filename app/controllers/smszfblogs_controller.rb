class SmszfblogsController < ApplicationController
  before_action :set_smszfblog, only: [:show, :edit, :update, :destroy]

  # GET /smszfblogs
  # GET /smszfblogs.json
  def index
  @smszfblogs=Smszfblog.all
  end
  # GET /smszfblogs/1.json
  def show
if !params[:t].nil? then
  @smszfblog=Smszfblog.where("zfbid = ? ",params[:t]).order("id desc").first
  if !@smszfblog.nil? and curent_user.qian then
    current_user.qian=current_user.qian+@smszfblog.qian*100
    current_user.save
    @smszfblog.deletei
    @smszfblog=new
    @smszfblog.name='冲值成功'
  else
    @smszfblog=new
  end
end

  end

  # GET /smszfblogs/new
  def new
    @smszfblog = Smszfblog.new
  end

  # GET /smszfblogs/1/edit
  def edit
  end

  # POST /smszfblogs
  # POST /smszfblogs.json
  def create
    @smszfblog = Smszfblog.new(smszfblog_params)

    respond_to do |format|
      if @smszfblog.save
        format.html { redirect_to @smszfblog, notice: 'Smszfblog was successfully created.' }
        format.json { render :show, status: :created, location: @smszfblog }
      else
        format.html { render :new }
        format.json { render json: @smszfblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smszfblogs/1
  # PATCH/PUT /smszfblogs/1.json
  def update
    respond_to do |format|
      if @smszfblog.update(smszfblog_params)
        format.html { redirect_to @smszfblog, notice: 'Smszfblog was successfully updated.' }
        format.json { render :show, status: :ok, location: @smszfblog }
      else
        format.html { render :edit }
        format.json { render json: @smszfblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smszfblogs/1
  # DELETE /smszfblogs/1.json
  def destroy
    @smszfblog.destroy
    respond_to do |format|
      format.html { redirect_to smszfblogs_url, notice: 'Smszfblog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smszfblog
#      @smszfblog = Smszfblog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smszfblog_params
      params.require(:smszfblog).permit(:zfbid, :qian)
    end
end
