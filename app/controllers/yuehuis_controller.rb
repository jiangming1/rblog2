class YuehuisController < ApplicationController
  before_action :set_yuehui, only: [:show, :edit, :update, :destroy]

  # GET /yuehuis
  # GET /yuehuis.json
  def index
    @yuehuis = Yuehui.all
  end

  # GET /yuehuis/1
  # GET /yuehuis/1.json
  def show
  end

  # GET /yuehuis/new
  def new
    @yuehui = Yuehui.new
  end

  # GET /yuehuis/1/edit
  def edit
  end

  # POST /yuehuis
  # POST /yuehuis.json
  def create
    @yuehui = Yuehui.new(yuehui_params)

    respond_to do |format|
      if @yuehui.save
        format.html { redirect_to @yuehui, notice: 'Yuehui was successfully created.' }
        format.json { render :show, status: :created, location: @yuehui }
      else
        format.html { render :new }
        format.json { render json: @yuehui.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yuehuis/1
  # PATCH/PUT /yuehuis/1.json
  def update
    respond_to do |format|
      if @yuehui.update(yuehui_params)
        format.html { redirect_to @yuehui, notice: 'Yuehui was successfully updated.' }
        format.json { render :show, status: :ok, location: @yuehui }
      else
        format.html { render :edit }
        format.json { render json: @yuehui.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yuehuis/1
  # DELETE /yuehuis/1.json
  def destroy
    @yuehui.destroy
    respond_to do |format|
      format.html { redirect_to yuehuis_url, notice: 'Yuehui was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yuehui
      @yuehui = Yuehui.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yuehui_params
      params.require(:yuehui).permit(:xingming, :tel, :addr)
    end
end
