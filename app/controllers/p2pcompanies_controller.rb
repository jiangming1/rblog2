class P2pcompaniesController < ApplicationController
  def upload
    uploaded_io = params[:person][:picture]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
  end

  # GET /p2pcompanies
  # GET /p2pcompanies.json
  def index
    @p2pcompanies = P2pcompany.all
    @p2pcompanies = P2pcompany.paginate(:page=>params[:page])
  end

  # GET /p2pcompanies/1
  # GET /p2pcompanies/1.json
  def show
  end

  # GET /p2pcompanies/new
  def new
    @p2pcompany = P2pcompany.new
  end

  # GET /p2pcompanies/1/edit
  def edit
  end

  # POST /p2pcompanies
  # POST /p2pcompanies.json
  def create
    @p2pcompany = P2pcompany.new(p2pcompany_params)

    respond_to do |format|
      if @p2pcompany.save
        format.html { redirect_to @p2pcompany, notice: 'P2pcompany was successfully created.' }
        format.json { render :show, status: :created, location: @p2pcompany }
      else
        format.html { render :new }
        format.json { render json: @p2pcompany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p2pcompanies/1
  # PATCH/PUT /p2pcompanies/1.json
  def update
    respond_to do |format|
      if @p2pcompany.update(p2pcompany_params)
        format.html { redirect_to @p2pcompany, notice: 'P2pcompany was successfully updated.' }
        format.json { render :show, status: :ok, location: @p2pcompany }
      else
        format.html { render :edit }
        format.json { render json: @p2pcompany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p2pcompanies/1
  # DELETE /p2pcompanies/1.json
  def destroy
    @p2pcompany.destroy
    respond_to do |format|
      format.html { redirect_to p2pcompanies_url, notice: 'P2pcompany was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p2pcompany
      @p2pcompany = P2pcompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p2pcompany_params
      params.require(:p2pcompany).permit(:c_name, :c_icon, :c_net_address, :c_phone, :c_address, :c_create_time, :c_persion, :c_province, :c_product_type)
    end
end
