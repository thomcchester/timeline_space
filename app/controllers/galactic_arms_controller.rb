class GalacticarmsController < ApplicationController
  before_action :set_galactic_arm, only: [:show, :edit, :update, :destroy]

  # GET /galactic_arms
  # GET /galactic_arms.json
  def index
    @galactic_arms = Galacticarm.all
  end

  # GET /galactic_arms/1
  # GET /galactic_arms/1.json
  def show
    @galactic_arm = Galacticarm.find(params[:id])
  end

  # GET /galactic_arms/new
  def new
    @galactic_arm = Galacticarm.new
  end

  # GET /galactic_arms/1/edit
  def edit
  end

  # POST /galactic_arms
  # POST /galactic_arms.json
  def create
    @galactic_arm = Galacticarm.new(galactic_arm_params)

    respond_to do |format|
      if @galactic_arm.save
        format.html { redirect_to @galactic_arm, notice: 'Galactic arm was successfully created.' }
        format.json { render :show, status: :created, location: @galactic_arm }
      else
        format.html { render :new }
        format.json { render json: @galactic_arm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galactic_arms/1
  # PATCH/PUT /galactic_arms/1.json
  def update
    respond_to do |format|
      if @galactic_arm.update(galactic_arm_params)
        format.html { redirect_to @galactic_arm, notice: 'Galactic arm was successfully updated.' }
        format.json { render :show, status: :ok, location: @galactic_arm }
      else
        format.html { render :edit }
        format.json { render json: @galactic_arm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galactic_arms/1
  # DELETE /galactic_arms/1.json
  def destroy
    @galactic_arm.destroy
    respond_to do |format|
      format.html { redirect_to galactic_arms_url, notice: 'Galactic arm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galactic_arm
      @galactic_arm = Galacticarm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galactic_arm_params
      params.fetch(:galactic_arm, {})
    end
end
