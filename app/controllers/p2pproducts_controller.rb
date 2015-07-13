class P2pproductsController < ApplicationController
  before_action :set_p2pproduct, only: [:show, :edit, :update, :destroy]

  # GET /p2pproducts
  # GET /p2pproducts.json
  def index
#   @p2pproducts = P2pproduct.all
    @p2pproducts = P2pproduct.paginate(:page=>params[:page])
  end

  # GET /p2pproducts/1
  # GET /p2pproducts/1.json
  def show
  end

  # GET /p2pproducts/new
  def new
    @p2pproduct = P2pproduct.new
  end

  # GET /p2pproducts/1/edit
  def edit
  end

  # POST /p2pproducts
  # POST /p2pproducts.json
  def create
    @p2pproduct = P2pproduct.new(p2pproduct_params)

    respond_to do |format|
      if @p2pproduct.save
        format.html { redirect_to @p2pproduct, notice: 'P2pproduct was successfully created.' }
        format.json { render :show, status: :created, location: @p2pproduct }
      else
        format.html { render :new }
        format.json { render json: @p2pproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p2pproducts/1
  # PATCH/PUT /p2pproducts/1.json
  def update
    respond_to do |format|
      if @p2pproduct.update(p2pproduct_params)
        format.html { redirect_to @p2pproduct, notice: 'P2pproduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @p2pproduct }
      else
        format.html { render :edit }
        format.json { render json: @p2pproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p2pproducts/1
  # DELETE /p2pproducts/1.json
  def destroy
    @p2pproduct.destroy
    respond_to do |format|
      format.html { redirect_to p2pproducts_url, notice: 'P2pproduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p2pproduct
      @p2pproduct = P2pproduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p2pproduct_params
      params.require(:p2pproduct).permit(:name, :company, :lowestAmount, :producttypelabel, :suppliernameshort, :supplierlogourl, :channelurl, :expectedprofitrate, :idea, :extrafields, :investfield, :term, :p_min_investment, :earlyBack, :earlytransfer, :p_title)
    end
end
