class SimplefromsController < ApplicationController
  before_action :set_simplefrom, only: [:show, :edit, :update, :destroy]

  # GET /simplefroms
  # GET /simplefroms.json
  def index
    @simplefroms = Simplefrom.all
  end

  # GET /simplefroms/1
  # GET /simplefroms/1.json
  def show
  end

  # GET /simplefroms/new
  def new
    @simplefrom = Simplefrom.new
  end

  # GET /simplefroms/1/edit
  def edit
  end

  # POST /simplefroms
  # POST /simplefroms.json
  def create
    @simplefrom = Simplefrom.new(simplefrom_params)

    respond_to do |format|
      if @simplefrom.save
        format.html { redirect_to @simplefrom, notice: 'Simplefrom was successfully created.' }
        format.json { render :show, status: :created, location: @simplefrom }
      else
        format.html { render :new }
        format.json { render json: @simplefrom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simplefroms/1
  # PATCH/PUT /simplefroms/1.json
  def update
    respond_to do |format|
      if @simplefrom.update(simplefrom_params)
        format.html { redirect_to @simplefrom, notice: 'Simplefrom was successfully updated.' }
        format.json { render :show, status: :ok, location: @simplefrom }
      else
        format.html { render :edit }
        format.json { render json: @simplefrom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simplefroms/1
  # DELETE /simplefroms/1.json
  def destroy
    @simplefrom.destroy
    respond_to do |format|
      format.html { redirect_to simplefroms_url, notice: 'Simplefrom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simplefrom
      @simplefrom = Simplefrom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simplefrom_params
      params.require(:simplefrom).permit(:name, :email, :year, :remember_me, :role_id)
    end
end
