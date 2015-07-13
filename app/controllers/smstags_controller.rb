class SmstagsController < ApplicationController
  before_action :set_smstag, only: [:show, :edit, :update, :destroy]

  # GET /smstags
  # GET /smstags.json
  def index
    @smstags = Smstag.all
  end

  # GET /smstags/1
  # GET /smstags/1.json
  def show
if @smstag.mobid.nil? then
  @smstag.mobid=1
  @smstag.save
end
  if current_user.qian<10 then 
  @smstag.mobno=""
  end
  end

  def getnew
  @smsno=Smsno.find(@smstag.mobid)
  @smstag.mobid=@smstag.mobid+1
  @smstag.mobno=@smsno.no
  @smstag.save
  end

  # GET /smstags/new
  def new
    @smstag = Smstag.new
  end

  # GET /smstags/1/edit
  def edit
  end

  # POST /smstags
  # POST /smstags.json
  def create
    @smstag = Smstag.new(smstag_params)

    respond_to do |format|
      if @smstag.save
        format.html { redirect_to @smstag, notice: 'Smstag was successfully created.' }
        format.json { render :show, status: :created, location: @smstag }
      else
        format.html { render :new }
        format.json { render json: @smstag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smstags/1
  # PATCH/PUT /smstags/1.json
  def update
    respond_to do |format|
      if @smstag.update(smstag_params)
        format.html { redirect_to @smstag, notice: 'Smstag was successfully updated.' }
        format.json { render :show, status: :ok, location: @smstag }
      else
        format.html { render :edit }
        format.json { render json: @smstag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smstags/1
  # DELETE /smstags/1.json
  def destroy
    @smstag.destroy
    respond_to do |format|
      format.html { redirect_to smstags_url, notice: 'Smstag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smstag
      @smstag = Smstag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smstag_params
      params.require(:smstag).permit(:name, :price, :mobid, :mobno, :laiyuan, :isonline)
    end
end
