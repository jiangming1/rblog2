class L1sController < ApplicationController
  before_action :set_l1, only: [:show, :edit, :update, :destroy]

  # GET /l1s
  # GET /l1s.json
  def index
    @l1s = L1.all
  end

  # GET /l1s/1
  # GET /l1s/1.json
  def show
  end

  # GET /l1s/new
  def new
    @l1 = L1.new
  end

  # GET /l1s/1/edit
  def edit
  end

  # POST /l1s
  # POST /l1s.json
  def create
    @l1 = L1.new(l1_params)

    respond_to do |format|
      if @l1.save
        format.html { redirect_to @l1, notice: 'L1 was successfully created.' }
        format.json { render :show, status: :created, location: @l1 }
      else
        format.html { render :new }
        format.json { render json: @l1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /l1s/1
  # PATCH/PUT /l1s/1.json
  def update
    respond_to do |format|
      if @l1.update(l1_params)
        format.html { redirect_to @l1, notice: 'L1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @l1 }
      else
        format.html { render :edit }
        format.json { render json: @l1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /l1s/1
  # DELETE /l1s/1.json
  def destroy
    @l1.destroy
    respond_to do |format|
      format.html { redirect_to l1s_url, notice: 'L1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_l1
      @l1 = L1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def l1_params
      params.require(:l1).permit(:a,:user,:passwd58)
    end
end
