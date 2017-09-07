class TennisController < ApplicationController
  before_action :set_tenni, only: [:show, :edit, :update, :destroy]

  # GET /tennis
  # GET /tennis.json
  def index
    @tennis = Tenni.all
  end

  # GET /tennis/1
  # GET /tennis/1.json
  def show
  end

  # GET /tennis/new
  def new
    @tenni = Tenni.new
  end

  # GET /tennis/1/edit
  def edit
  end

  # POST /tennis
  # POST /tennis.json
  def create
    @tenni = Tenni.new(tenni_params)

    respond_to do |format|
      if @tenni.save
        format.html { redirect_to @tenni, notice: 'Tenni was successfully created.' }
        format.json { render :show, status: :created, location: @tenni }
      else
        format.html { render :new }
        format.json { render json: @tenni.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tennis/1
  # PATCH/PUT /tennis/1.json
  def update
    respond_to do |format|
      if @tenni.update(tenni_params)
        format.html { redirect_to @tenni, notice: 'Tenni was successfully updated.' }
        format.json { render :show, status: :ok, location: @tenni }
      else
        format.html { render :edit }
        format.json { render json: @tenni.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tennis/1
  # DELETE /tennis/1.json
  def destroy
    @tenni.destroy
    respond_to do |format|
      format.html { redirect_to tennis_url, notice: 'Tenni was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenni
      @tenni = Tenni.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tenni_params
      params.require(:tenni).permit(:name, :team, :point)
    end
end
