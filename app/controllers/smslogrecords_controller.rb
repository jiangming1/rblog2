class SmslogrecordsController < ApplicationController
  before_action :set_smslogrecord, only: [:show, :edit, :update, :destroy]

  # GET /smslogrecords
  # GET /smslogrecords.json
  def index
    @smslogrecords = Smslogrecord.where("user_id=?",current_user.id).order("id desc")
  end

  # GET /smslogrecords/1
  # GET /smslogrecords/1.json
  def show
  end

  # GET /smslogrecords/new
  def new
    @smslogrecord = Smslogrecord.new
  end

  # GET /smslogrecords/1/edit
  def edit
  end

  # POST /smslogrecords
  # POST /smslogrecords.json
  def create
    @smslogrecord = Smslogrecord.new(smslogrecord_params)

    respond_to do |format|
      if @smslogrecord.save
        format.html { redirect_to @smslogrecord, notice: 'Smslogrecord was successfully created.' }
        format.json { render :show, status: :created, location: @smslogrecord }
      else
        format.html { render :new }
        format.json { render json: @smslogrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smslogrecords/1
  # PATCH/PUT /smslogrecords/1.json
  def update
    respond_to do |format|
      if @smslogrecord.update(smslogrecord_params)
        format.html { redirect_to @smslogrecord, notice: 'Smslogrecord was successfully updated.' }
        format.json { render :show, status: :ok, location: @smslogrecord }
      else
        format.html { render :edit }
        format.json { render json: @smslogrecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smslogrecords/1
  # DELETE /smslogrecords/1.json
  def destroy
    @smslogrecord.destroy
    respond_to do |format|
      format.html { redirect_to smslogrecords_url, notice: 'Smslogrecord was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smslogrecord
      @smslogrecord = Smslogrecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smslogrecord_params
      params.require(:smslogrecord).permit(:jieshouhaoma, :neirong, :xiangmu, :huoqushijian)
    end
end
