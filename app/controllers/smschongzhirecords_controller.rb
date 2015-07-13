class SmschongzhirecordsController < ApplicationController
  before_action :set_smschongzhirecord, only: [:show, :edit, :update, :destroy]

  # GET /smschongzhirecords
  # GET /smschongzhirecords.json
  def index
    @smschongzhirecords =Smschongzhirecord.where("user_id=?",current_user.id)
  end

  # GET /smschongzhirecords/1
  # GET /smschongzhirecords/1.json
  def show
  end

  # GET /smschongzhirecords/new
  def new
    @smschongzhirecord = Smschongzhirecord.new
  end

  # GET /smschongzhirecords/1/edit
  def edit
  end

  # POST /smschongzhirecords
  # POST /smschongzhirecords.json
  def create
    @smschongzhirecord = Smschongzhirecord.new(smschongzhirecord_params)

    respond_to do |format|
      if @smschongzhirecord.save
        format.html { redirect_to @smschongzhirecord, notice: 'Smschongzhirecord was successfully created.' }
        format.json { render :show, status: :created, location: @smschongzhirecord }
      else
        format.html { render :new }
        format.json { render json: @smschongzhirecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smschongzhirecords/1
  # PATCH/PUT /smschongzhirecords/1.json
  def update
    respond_to do |format|
      if @smschongzhirecord.update(smschongzhirecord_params)
        format.html { redirect_to @smschongzhirecord, notice: 'Smschongzhirecord was successfully updated.' }
        format.json { render :show, status: :ok, location: @smschongzhirecord }
      else
        format.html { render :edit }
        format.json { render json: @smschongzhirecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smschongzhirecords/1
  # DELETE /smschongzhirecords/1.json
  def destroy
    @smschongzhirecord.destroy
    respond_to do |format|
      format.html { redirect_to smschongzhirecords_url, notice: 'Smschongzhirecord was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smschongzhirecord
      @smschongzhirecord = Smschongzhirecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smschongzhirecord_params
      params.require(:smschongzhirecord).permit(:oldbi, :chongzhijine, :chongzhibi, :dingdanhao)
    end
end
