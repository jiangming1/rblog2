class LsController < ApplicationController
  before_action :set_l, only: [:show, :edit, :update, :destroy]

  # GET /ls
  # GET /ls.json
  def index
    @ipinfo=`echo 'aa'>/root/a/b.txt`
    @ls = L.all.order('id desc')
  end

  # GET /ls/1
  # GET /ls/1.json
  def show
  end

  # GET /ls/new
  def new
    @l = L.new
  end

  # GET /ls/1/edit
  def edit
  end

  # POST /ls
  # POST /ls.json
  def create
    @l = L.new(l_params)

    respond_to do |format|
      if @l.save
        format.html { redirect_to @l, notice: 'L was successfully created.' }
        format.json { render :show, status: :created, location: @l }
      else
        format.html { render :new }
        format.json { render json: @l.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ls/1
  # PATCH/PUT /ls/1.json
  def update
    respond_to do |format|
      if @l.update(l_params)
        format.html { redirect_to @l, notice: 'L was successfully updated.' }
        format.json { render :show, status: :ok, location: @l }
      else
        format.html { render :edit }
        format.json { render json: @l.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ls/1
  # DELETE /ls/1.json
  def destroy
    @l.destroy
    respond_to do |format|
      format.html { redirect_to ls_url, notice: 'L was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_l
      @l = L.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def l_params
      params.require(:l).permit(:a)
    end
end
