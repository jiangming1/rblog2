class SmsreceivedsController < ApplicationController
  before_action :set_smsreceived, only: [:show, :edit, :update, :destroy]

  # GET /smsreceiveds
  # GET /smsreceiveds.json
  def index

    @smsreceiveds = Smsreceived.all.order("id")

  end

  # GET /smsreceiveds/1
  # GET /smsreceiveds/1.json
  def show
if !params[:t].nil? then
  @smsreceived1=Smsreceived.where("no = ? ",params[:t]).order("id desc").first  
if !@smsreceived1.nil? then 
  @smstag=Smstag.where("id = ?",params[:nameid]).first
  @smsno=Smsno.where("no = ?",params[:t]).first
  @smsno1=Smsno.where("id > "+@smsno.id.to_s).first
  #复制之后删除自己 下次就不会读到了  
  @smsreceived=Smsreceived.new
  @smsreceived.no=@smsreceived1.no
  @smsreceived.body=@smsreceived1.body
  @smslog=Smslogrecord.new
  @smsreceived1.delete
  @smslog.jieshouhaoma=@smsreceived.no
  @smslog.neirong=@smsreceived.body
  @smslog.xiangmu=params[:t]
  @smslog.huoqushijian=@smsreceived.created_at
  @smslog.user_id=current_user.id
  @smslog.save
  current_user.qian=current_user.qian-10
  current_user.save
if !@smsno1.nil? then
  #找到后更新tag下的手机号
  @smstag.mobid=@smsno1.id
  @smstag.mobno=@smsno1.no
  @smstag.save
end
end
end
  end

  # GET /smsreceiveds/new
  def new
    @smsreceived = Smsreceived.new
  end

  # GET /smsreceiveds/1/edit
  def edit
  end

  # POST /smsreceiveds
  # POST /smsreceiveds.json
  def create
    @smsreceived = Smsreceived.new(smsreceived_params)

    respond_to do |format|
      if @smsreceived.save
        format.html { redirect_to @smsreceived, notice: 'Smsreceived was successfully created.' }
        format.json { render :show, status: :created, location: @smsreceived }
      else
        format.html { render :new }
        format.json { render json: @smsreceived.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smsreceiveds/1
  # PATCH/PUT /smsreceiveds/1.json
  def update
    respond_to do |format|
      if @smsreceived.update(smsreceived_params)
        format.html { redirect_to @smsreceived, notice: 'Smsreceived was successfully updated.' }
        format.json { render :show, status: :ok, location: @smsreceived }
      else
        format.html { render :edit }
        format.json { render json: @smsreceived.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smsreceiveds/1
  # DELETE /smsreceiveds/1.json
  def destroy
    @smsreceived.destroy
    respond_to do |format|
      format.html { redirect_to smsreceiveds_url, notice: 'Smsreceived was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smsreceived
      @smsreceived = Smsreceived.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smsreceived_params
      params.require(:smsreceived).permit(:no, :body, :tag, :uuid, :mytelno)
    end
end
