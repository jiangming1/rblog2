class SmsuserusedtellistsController < ApplicationController
  before_action :set_smsuserusedtellist, only: [:show, :edit, :update, :destroy]

  # GET /smsuserusedtellists
  # GET /smsuserusedtellists.json
  def index
    @smsuserusedtellists = Smsuserusedtellist.all
  end

  # GET /smsuserusedtellists/1
  # GET /smsuserusedtellists/1.json
  def show
  end

  # GET /smsuserusedtellists/new
  def new
    @smsuserusedtellist = Smsuserusedtellist.new
  end

  # GET /smsuserusedtellists/1/edit
  def edit
  end

  # POST /smsuserusedtellists
  # POST /smsuserusedtellists.json
  def create
    @smsuserusedtellist = Smsuserusedtellist.new(smsuserusedtellist_params)

    respond_to do |format|
      if @smsuserusedtellist.save
        format.html { redirect_to @smsuserusedtellist, notice: 'Smsuserusedtellist was successfully created.' }
        format.json { render :show, status: :created, location: @smsuserusedtellist }
      else
        format.html { render :new }
        format.json { render json: @smsuserusedtellist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smsuserusedtellists/1
  # PATCH/PUT /smsuserusedtellists/1.json
  def update
    respond_to do |format|
      if @smsuserusedtellist.update(smsuserusedtellist_params)
        format.html { redirect_to @smsuserusedtellist, notice: 'Smsuserusedtellist was successfully updated.' }
        format.json { render :show, status: :ok, location: @smsuserusedtellist }
      else
        format.html { render :edit }
        format.json { render json: @smsuserusedtellist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smsuserusedtellists/1
  # DELETE /smsuserusedtellists/1.json
  def destroy
    @smsuserusedtellist.destroy
    respond_to do |format|
      format.html { redirect_to smsuserusedtellists_url, notice: 'Smsuserusedtellist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smsuserusedtellist
      @smsuserusedtellist = Smsuserusedtellist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smsuserusedtellist_params
      params.require(:smsuserusedtellist).permit(:name, :telpostion)
    end
end
