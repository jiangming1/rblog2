class SmsnosController < ApplicationController
  before_action :set_smsno, only: [:show, :edit, :update, :destroy]

  # GET /smsnos
  # GET /smsnos.json
  def index
    @smsnos = Smsno.all
  end

  # GET /smsnos/1
  # GET /smsnos/1.json
  def show
  end

  # GET /smsnos/new
  def new
    @smsno = Smsno.new
  end

  # GET /smsnos/1/edit
  def edit
  end

  # POST /smsnos
  # POST /smsnos.json
  def create
    @smsno = Smsno.new(smsno_params)

    respond_to do |format|
      if @smsno.save
        format.html { redirect_to @smsno, notice: 'Smsno was successfully created.' }
        format.json { render :show, status: :created, location: @smsno }
      else
        format.html { render :new }
        format.json { render json: @smsno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smsnos/1
  # PATCH/PUT /smsnos/1.json
  def update
    respond_to do |format|
      if @smsno.update(smsno_params)
        format.html { redirect_to @smsno, notice: 'Smsno was successfully updated.' }
        format.json { render :show, status: :ok, location: @smsno }
      else
        format.html { render :edit }
        format.json { render json: @smsno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smsnos/1
  # DELETE /smsnos/1.json
  def destroy
    @smsno.destroy
    respond_to do |format|
      format.html { redirect_to smsnos_url, notice: 'Smsno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smsno
      @smsno = Smsno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smsno_params
      params.require(:smsno).permit(:no, :name, :tag)
    end
end
