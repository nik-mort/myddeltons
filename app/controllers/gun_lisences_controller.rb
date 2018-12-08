class GunLisencesController < ApplicationController
  before_action :set_gun_lisence, only: [:show, :edit, :update, :destroy]

  # GET /gun_lisences
  # GET /gun_lisences.json
  def index
    @gun_lisences = GunLisence.all
  end

  # GET /gun_lisences/1
  # GET /gun_lisences/1.json
  def show
  end

  # GET /gun_lisences/new
  def new
    @gun_lisence = GunLisence.new
  end

  # GET /gun_lisences/1/edit
  def edit
  end

  # POST /gun_lisences
  # POST /gun_lisences.json
  def create
    @gun_lisence = GunLisence.new(gun_lisence_params)

    respond_to do |format|
      if @gun_lisence.save
        format.html { redirect_to @gun_lisence, notice: 'Gun lisence was successfully created.' }
        format.json { render :show, status: :created, location: @gun_lisence }
      else
        format.html { render :new }
        format.json { render json: @gun_lisence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gun_lisences/1
  # PATCH/PUT /gun_lisences/1.json
  def update
    respond_to do |format|
      if @gun_lisence.update(gun_lisence_params)
        format.html { redirect_to @gun_lisence, notice: 'Gun lisence was successfully updated.' }
        format.json { render :show, status: :ok, location: @gun_lisence }
      else
        format.html { render :edit }
        format.json { render json: @gun_lisence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gun_lisences/1
  # DELETE /gun_lisences/1.json
  def destroy
    @gun_lisence.destroy
    respond_to do |format|
      format.html { redirect_to gun_lisences_url, notice: 'Gun lisence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gun_lisence
      @gun_lisence = GunLisence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gun_lisence_params
      params.require(:gun_lisence).permit(:classification, :number, :expiry_date, :member_id)
    end
end
