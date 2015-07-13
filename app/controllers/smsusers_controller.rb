class SmsusersController < ApplicationController
  before_action :set_smsuser, only: [:show, :edit, :update, :destroy]

  # GET /smsusers
  # GET /smsusers.json
  def index
    @smsusers = Smsuser.all
  end

  # GET /smsusers/1
  # GET /smsusers/1.json
  def show
  end

  # GET /smsusers/new
  def new
    @smsuser = Smsuser.new
  end

  # GET /smsusers/1/edit
  def edit
  end

  # POST /smsusers
  # POST /smsusers.json
  def create
    @smsuser = Smsuser.new(smsuser_params)

    respond_to do |format|
      if @smsuser.save
        format.html { redirect_to @smsuser, notice: 'Smsuser was successfully created.' }
        format.json { render :show, status: :created, location: @smsuser }
      else
        format.html { render :new }
        format.json { render json: @smsuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smsusers/1
  # PATCH/PUT /smsusers/1.json
  def update
    respond_to do |format|
      if @smsuser.update(smsuser_params)
        format.html { redirect_to @smsuser, notice: 'Smsuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @smsuser }
      else
        format.html { render :edit }
        format.json { render json: @smsuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smsusers/1
  # DELETE /smsusers/1.json
  def destroy
    @smsuser.destroy
    respond_to do |format|
      format.html { redirect_to smsusers_url, notice: 'Smsuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smsuser
      @smsuser = Smsuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smsuser_params
      params.require(:smsuser).permit(:usertype, :qq, :mail, :mob, :loginname, :zhifubao)
    end
end
