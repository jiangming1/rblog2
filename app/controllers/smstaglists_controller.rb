class SmstaglistsController < ApplicationController
  before_action :set_smstaglist, only: [:show, :edit, :update, :destroy]

  # GET /smstaglists
  # GET /smstaglists.json
  def index
    @smstaglists = Smstaglist.all
  end

  # GET /smstaglists/1
  # GET /smstaglists/1.json
  def show
  end

  # GET /smstaglists/new
  def new
    @smstaglist = Smstaglist.new
  end

  # GET /smstaglists/1/edit
  def edit
  end

  # POST /smstaglists
  # POST /smstaglists.json
  def create
    @smstaglist = Smstaglist.new(smstaglist_params)

    respond_to do |format|
      if @smstaglist.save
        format.html { redirect_to @smstaglist, notice: 'Smstaglist was successfully created.' }
        format.json { render :show, status: :created, location: @smstaglist }
      else
        format.html { render :new }
        format.json { render json: @smstaglist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smstaglists/1
  # PATCH/PUT /smstaglists/1.json
  def update
    respond_to do |format|
      if @smstaglist.update(smstaglist_params)
        format.html { redirect_to @smstaglist, notice: 'Smstaglist was successfully updated.' }
        format.json { render :show, status: :ok, location: @smstaglist }
      else
        format.html { render :edit }
        format.json { render json: @smstaglist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smstaglists/1
  # DELETE /smstaglists/1.json
  def destroy
    @smstaglist.destroy
    respond_to do |format|
      format.html { redirect_to smstaglists_url, notice: 'Smstaglist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smstaglist
      @smstaglist = Smstaglist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smstaglist_params
      params.require(:smstaglist).permit(:name, :price, :laiyuan, :isonline)
    end
end
