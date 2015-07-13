class SoftnamesController < ApplicationController
  before_action :set_softname, only: [:show, :edit, :update, :destroy]

  # GET /softnames
  # GET /softnames.json
  def index
    @softnames = Softname.all
  end

  # GET /softnames/1
  # GET /softnames/1.json
  def show
  end

  # GET /softnames/new
  def new
    @softname = Softname.new
  end

  # GET /softnames/1/edit
  def edit
  end

  # POST /softnames
  # POST /softnames.json
  def create
    @softname = Softname.new(softname_params)

    respond_to do |format|
      if @softname.save
        format.html { redirect_to @softname, notice: 'Softname was successfully created.' }
        format.json { render :show, status: :created, location: @softname }
      else
        format.html { render :new }
        format.json { render json: @softname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /softnames/1
  # PATCH/PUT /softnames/1.json
  def update
    respond_to do |format|
      if @softname.update(softname_params)
        format.html { redirect_to @softname, notice: 'Softname was successfully updated.' }
        format.json { render :show, status: :ok, location: @softname }
      else
        format.html { render :edit }
        format.json { render json: @softname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /softnames/1
  # DELETE /softnames/1.json
  def destroy
    @softname.destroy
    respond_to do |format|
      format.html { redirect_to softnames_url, notice: 'Softname was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_softname
      @softname = Softname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def softname_params
      params.require(:softname).permit(:name, :huajun_id, :duote_id, :crsky_id, :body)
    end
end
