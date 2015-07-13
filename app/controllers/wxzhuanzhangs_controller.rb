class WxzhuanzhangsController < ApplicationController
  before_action :set_wxzhuanzhang, only: [:show, :edit, :update, :destroy]

  # GET /wxzhuanzhangs
  # GET /wxzhuanzhangs.json
  def index
    @wxzhuanzhangs = Wxzhuanzhang.all
  end

  # GET /wxzhuanzhangs/1
  # GET /wxzhuanzhangs/1.json
  def show
  end

  # GET /wxzhuanzhangs/new
  def new
    @wxzhuanzhang = Wxzhuanzhang.new
  end

  # GET /wxzhuanzhangs/1/edit
  def edit
  end

  # POST /wxzhuanzhangs
  # POST /wxzhuanzhangs.json
  def create
    @wxzhuanzhang = Wxzhuanzhang.new(wxzhuanzhang_params)

    respond_to do |format|
      if @wxzhuanzhang.save
        format.html { redirect_to @wxzhuanzhang, notice: 'Wxzhuanzhang was successfully created.' }
        format.json { render :show, status: :created, location: @wxzhuanzhang }
      else
        format.html { render :new }
        format.json { render json: @wxzhuanzhang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wxzhuanzhangs/1
  # PATCH/PUT /wxzhuanzhangs/1.json
  def update
    respond_to do |format|
      if @wxzhuanzhang.update(wxzhuanzhang_params)
        id=params[:id]
        t=DateTime.parse(wxzhuanzhang_params[:riqi])
        t1=t+0.01 
        dayOfWeek = [ "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六" ]
        dayOfam = [ "上午","下午" ]
        #5月19日 下午16:52
        date1 = t.strftime("%m月%d日 ")<<dayOfam[t.strftime("%p").to_i] << t.strftime(" %H:%M")
        date2 = dayOfWeek[t.strftime("%w").to_i] << t.strftime(" %H:%M")
        date3 = t1.strftime("%y-%m-%d %H:%M")
        date31 = t.strftime("%y-%m-%d %H:%M")
        jin = format("%0.2f",wxzhuanzhang_params[:jin])
        #微信收款的居中处理
        jinweishu=326 - wxzhuanzhang_params[:jin].length*73/2
        @run=`convert #{Rails.root}/public/a/wxzhuanzhang.png -font #{Rails.root}/public/a/msyh.ttc  -fill  'rgb(255,255,255)' -pointsize 40 -annotate +364+438 "￥#{wxzhuanzhang_params[:jin]}" -font #{Rails.root}/public/a/msyh.ttc  -fill  'rgb(255,255,255)' -pointsize 40 -annotate +438+911 "￥#{wxzhuanzhang_params[:jin]}" -font #{Rails.root}/public/a/msyh.ttc  -fill  'rgb(251,251,251)' -pointsize 34.5 -annotate +388+694 "#{date1}" -font #{Rails.root}/public/a/msyh.ttc  -fill  'rgb(255,255,255)' -pointsize 50 -annotate +237+166 "#{wxzhuanzhang_params[:xingming]}"   #{Rails.root}/public/#{id}.png`
        @zfbrun=`convert /root/opt/rblog/public/a/zfbzhuanzhang.png -font /root/opt/rblog/public/a/msyh.ttc  -fill  'rgb(255,255,255)' -pointsize 31 -annotate +450+1366 "#{date2}" -fill  'rgb(0,0,0)' -pointsize 88 -annotate +246+1534 "#{wxzhuanzhang_params[:jin]}" -fill  'rgb(255,255,255)' -pointsize 55 -annotate +457+167 "#{wxzhuanzhang_params[:xingming]}"    /root/opt/rblog/public/zfbzz#{id}.png`
        @wxsk=`convert /root/opt/rblog/public/a/wxshoukuan.png -font /root/opt/rblog/public/a/msyh.ttc  -fill  'rgb(146,146,146)' -pointsize 40.5 -annotate +474+1874 "#{date3}" -fill  'rgb(146,146,146)' -pointsize 40.5 -annotate +474+1794 "#{date31}" -fill  'rgb(0,0,0)' -pointsize 146 -annotate +#{jinweishu}+900 "￥#{jin}"    /root/opt/rblog/public/wsk#{id}.png`
#326-73
        #微信对话框截图
        @wxdhk=`convert weixin.png wxduihua0.png -geometry +248+519 -composite  -font msyh.ttc  -fill  'rgb(151,151,151)' -pointsize 48 -annotate +198+598 "我只有这些太感谢你了"  -font msyh.ttc  -fill  'rgb(151,151,151)' -pointsize 48 -annotate +833+755 "剧" wxduihua1.png -geometry -48+678 -composite  1.png
        `
        format.html { redirect_to @wxzhuanzhang, notice: 'Wxzhuanzhang was successfully updated.' }
        format.json { render :show, status: :ok, location: @wxzhuanzhang }
      else
        format.html { render :edit }
        format.json { render json: @wxzhuanzhang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wxzhuanzhangs/1
  # DELETE /wxzhuanzhangs/1.json
  def destroy
    @wxzhuanzhang.destroy
    respond_to do |format|
      format.html { redirect_to wxzhuanzhangs_url, notice: 'Wxzhuanzhang was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wxzhuanzhang
      @wxzhuanzhang = Wxzhuanzhang.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wxzhuanzhang_params
      params.require(:wxzhuanzhang).permit(:id,:jin, :riqi, :xingming)
    end
end
